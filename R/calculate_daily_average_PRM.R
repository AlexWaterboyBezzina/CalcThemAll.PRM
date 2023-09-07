#' Calculate Daily Average Pesticide Risk Metric Values For Each Pesticide Type
#'
#' @param LOR_treated_data A data set of LOR treated pesticide concentration values in
#' individual columns that match the pesticide names in the "Pesticide_Info" data frame.
#' This data set should also include a "Date", "Sampling Year" and "Site Name" column.
#' @param include_PAF If "TRUE" Percentage Affected Fraction values are included in
#' the output along with Daily PRM in a list format. These values can be useful for
#' plotting relative individual pesticide contribution to overall PRM,
#' however most will not need this so default is "FALSE".
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
calculate_daily_average_PRM <- function(LOR_treated_data, include_PAF = FALSE){

  LOR_treated_data<- as.data.frame(LOR_treated_data)

  pesti_names <- CatchThemAll.PRM::Pesticide_Info$analyte

  `Site Name` <- LOR_treated_data$`Site Name`

  `Sampling Year` <- LOR_treated_data$`Sampling Year`

  Date <- LOR_treated_data$`Date`


  daily_prop <- data.frame(`Site Name`, `Sampling Year`, Date)

  daily_all_chems <- data.frame(`Site Name`, `Sampling Year`, Date)
  for (i in 1:length(pesti_names)){
    analyte_i <- pesti_names[i]
    parameters <- CatchThemAll.PRM::Pesticide_Info %>% dplyr::filter(analyte == analyte_i)

    if(parameters$Distribution.type == "Burr Type III"){

      new <- Burr_Type_III_Formula(analyte_column = LOR_treated_data[,analyte_i],
                                   parameter_b = parameters$b, parameter_c = parameters$c,
                                   parameter_k = parameters$k)

    } else
      if(parameters$Distribution.type == "Log-logistic"){

        new <- Log_Logistic_Formula(LOR_treated_data[,analyte_i],
                                    parameter_alpha = parameters$alpha,
                                    parameter_beta = parameters$beta)

      }else
        if(parameters$Distribution.type == "Inverse Weibull"){

          new <- Inverse_Weibull_Formula(analyte_column = LOR_treated_data[,analyte_i],
                                         parameter_local.alpha = parameters$local.alpha,
                                         parameter_local.beta = parameters$local.beta)
        }


    daily_all_chems$new <- new
    daily_prop$new_prop <- 1-(new/100)

    names(daily_all_chems)[names(daily_all_chems) == "new"] <- paste0(analyte_i, "_PAF")
    names(daily_prop)[names(daily_prop) == "new_prop"] <- paste0(analyte_i, "_prop")
  }


  PRM <- daily_prop %>% dplyr::select(dplyr::ends_with("prop"))


  daily_prop$`Total PRM` <- (1-(apply(PRM, 1, FUN=prod, na.rm=TRUE)))*100

  daily_PRM <- daily_prop %>% dplyr::group_by(Site.Name, Sampling.Year, Date) %>%
    dplyr::summarise("Total PRM" = mean(`Total PRM`))

  for(j in 1:length(unique(CatchThemAll.PRM::Pesticide_Info$Pesticide.type))){

    type <- unique(CatchThemAll.PRM::Pesticide_Info$Pesticide.type)[j]

    analytes <- CatchThemAll.PRM::Pesticide_Info %>%
      dplyr::filter(Pesticide.type == type) %>% .$analyte

    group_PRM <- PRM %>% dplyr::select(dplyr::starts_with(analytes))

    group_PRM <- (1-(apply(group_PRM, 1, FUN=prod, na.rm=TRUE)))*100

    daily_prop$group_PRM <- group_PRM

    place_holder_PRM <- daily_prop %>%
      dplyr::group_by(Site.Name, Sampling.Year, Date) %>%
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
