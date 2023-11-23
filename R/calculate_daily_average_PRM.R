#' Calculate Daily Average Pesticide Risk Metric Values For Each Pesticide Type
#'
#' @param LOR_treated_data A data set of LOR treated pesticide concentration values in
#' individual columns that match the pesticide names in the "Pesticide_Info" data frame.
#' This data set should also include a "Date", "Sampling Year" and "Site Name" column.
#' @param include_PAF If "TRUE" Percentage Affected Fraction values are included in
#' the output along with Daily PRM in a list format. These values can be useful for
#' plotting relative individual pesticide contribution to overall PRM,
#' however most will not need this so default is "FALSE".
#' @param pesticide_info The reference table which contains all relevant information for
#' calculations. It is recommended that the "Pesticide_Info" dataset included in this
#' package be used and if you wish to include more or less pesticides you can appended
#' them with the relevant information to this table. If you are creating your own table you must
#' ensure that the pesticide name column is title "analytes" and the relative LOR replacement
#' column is "relative_LOR" for the function to run.
#'
#' @return If include_PAF is "FALSE" returns a data frame of daily average PRM values
#' for each pesticide type for each sample. Wet season average calculations can be run
#' on the returned data. If include_PAF is "TRUE" returns a list with daily PRM values
#' in a data frame as the first object and a data frame of PAF values as the second object.
#' @export
#'
#' @examples
#' Kanto_pesticides_LOR_treated <- treat_LORs_all_data(raw_data = Kanto_pesticides,
#' pesticide_info = CatchThemAll.PRM::Pesticide_Info)
#' Kanto_daily_PRM <- calculate_daily_average_PRM(LOR_treated_data = Kanto_pesticides_LOR_treated)
#' head(Kanto_daily_PRM)
#'
#' @importFrom dplyr .data
calculate_daily_average_PRM <- function(LOR_treated_data, include_PAF = FALSE, pesticide_info = CatchThemAll.PRM::Pesticide_Info){


  LOR_treated_data<- as.data.frame(LOR_treated_data)

  pesti_names <- pesticide_info$analyte

  `Site Name` <- LOR_treated_data$`Site Name`

  `Sampling Year` <- LOR_treated_data$`Sampling Year`

  Date <- LOR_treated_data$`Date`


  daily_prop <- data.frame(`Site Name`, `Sampling Year`, Date)

  daily_all_chems <- data.frame(`Site Name`, `Sampling Year`, Date)
  for (i in 1:length(pesti_names)){
    analyte_i <- pesti_names[i]
    parameters <- pesticide_info %>% dplyr::filter(.data$analyte == analyte_i)

    if(parameters$Distribution.type == "Burr Type III"){

      new <- Burr_Type_III_Formula(concentration = as.numeric(LOR_treated_data[,analyte_i]),
                                   shape_location = parameters$shape_location,
                                   scale = parameters$scale,
                                   shape_location_2 = parameters$shape_location_2)

    } else
      if(parameters$Distribution.type == "Log-Logistic"){

        new <- Log_Logistic_Formula(concentration = as.numeric(LOR_treated_data[,analyte_i]),
                                    shape_location = parameters$shape_location,
                                    scale = parameters$scale)

      }else
        if(parameters$Distribution.type == "Inverse Weibull"){

          new <- Inverse_Weibull_Formula(concentration = as.numeric(LOR_treated_data[,analyte_i]),
                                         shape_location = parameters$shape_location,
                                         scale = parameters$scale)
        }else
          if(parameters$Distribution.type == "Log-Normal"){
            new <- Log_Normal_Formula(concentration = as.numeric(LOR_treated_data[,analyte_i]),
                                           shape_location = parameters$shape_location,
                                           scale = parameters$scale)
          }else
            if(parameters$Distribution.type == "Log-Gumbel"){
              new <- Log_Gumbel_Formula(concentration = as.numeric(LOR_treated_data[,analyte_i]),
                                        shape_location = parameters$shape_location,
                                        scale = parameters$scale)
            }else
              if(parameters$Distribution.type == "Log-Normal Log-Normal"){
                new <- Log_Normal_Log_Normal_Formula(concentration = as.numeric(LOR_treated_data[,analyte_i]),
                                          shape_location = parameters$shape_location,
                                          scale = parameters$scale,
                                          shape_location_2 = parameters$shape_location_2,
                                          scale_2 = parameters$scale_2,
                                          weight = parameters$weight)
              }else
                if(parameters$Distribution.type == "Log-Logistic Log-Logistic"){
                  new <- Log_Logistic_Log_Logistic_Formula(concentration = as.numeric(LOR_treated_data[,analyte_i]),
                                                       shape_location = parameters$shape_location,
                                                       scale = parameters$scale,
                                                       shape_location_2 = parameters$shape_location_2,
                                                       scale_2 = parameters$scale_2,
                                                       weight = parameters$weight)
                }else
                  if(parameters$Distribution.type == "Gamma"){
                    new <- Gamma_Formula(concentration = as.numeric(LOR_treated_data[,analyte_i]),
                                              shape_location = parameters$shape_location,
                                              scale = parameters$scale)
                  }


    daily_all_chems$new <- new
    daily_prop$new_prop <- 1-(new/100)

    names(daily_all_chems)[names(daily_all_chems) == "new"] <- paste0(analyte_i, "_PAF")
    names(daily_prop)[names(daily_prop) == "new_prop"] <- paste0(analyte_i, "_prop")
  }


  PRM <- daily_prop %>% dplyr::select(dplyr::ends_with("prop"))


  daily_prop$`Total PRM` <- (1-(apply(PRM, 1, FUN=prod, na.rm=TRUE)))*100

  daily_PRM <- daily_prop %>% dplyr::group_by(.data$Site.Name, .data$Sampling.Year, Date) %>%
    dplyr::summarise("Total PRM" = mean(.data$`Total PRM`))

  for(j in 1:length(unique(pesticide_info$Pesticide.type))){

    type <- unique(pesticide_info$Pesticide.type)[j]

    analytes <- pesticide_info %>%
      dplyr::filter(.data$Pesticide.type == type)
    analytes <- analytes$analyte

    group_PRM <- PRM %>% dplyr::select(dplyr::starts_with(analytes))

    group_PRM <- (1-(apply(group_PRM, 1, FUN=prod, na.rm=TRUE)))*100

    daily_prop$group_PRM <- group_PRM

    place_holder_PRM <- daily_prop %>%
      dplyr::group_by(.data$Site.Name, .data$Sampling.Year, Date) %>%
      dplyr::summarise("PRM" = mean(group_PRM))

    daily_PRM$group_PRM <- place_holder_PRM$PRM

    names(daily_PRM)[names(daily_PRM) == "group_PRM"] <- paste0(type, " PRM")


  }

  daily_PRM <- daily_PRM %>% dplyr::rename("Site Name" = "Site.Name",
                                           "Sampling Year" = "Sampling.Year")

  if(include_PAF == TRUE){
    daily_all_chems <- daily_all_chems %>% dplyr::rename("Site Name" = "Site.Name",
                                                         "Sampling Year" = "Sampling.Year")
    daily_PRM_all_chems  <- list(daily_PRM, daily_all_chems)

    return(daily_PRM_all_chems)
  }else {
    return(dplyr::as_tibble(daily_PRM))
  }
}
