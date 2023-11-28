#' Treat a single observations LORs
#'
#' @param sample_data A single observation containing a concentration value for each
#' pollutant being used in the metric. LOR values should be in "<0.05" format and
#' no values should be empty "".
#' @param pollutant_info The reference table which contains all relevant information
#' for calculations. It is recommended that the "pollutant_info" dataset included in
#' this package be used and if you wish to include more or less pollutants you can
#' appended them with the relevant information to this table. If you are creating
#' your own table you must ensure that the pollutant name column is title "pollutants"
#' and the relative LOR replacement column is "relative_LOR" for the function to run.
#' @param treatment_method Select how to treat the LOR values with either "WQI"
#' representing the Queensland Department of Environment & Science Water Quality
#' Monitoring & Investigations team's method for replacing LORs or "Zero" which
#' replaces them with a negligible numeric value. Zero is the default here as this
#' function on its own only treats a single observation and therefore the first
#' detection in the WQI method cannot be used.
#'
#' @return returns the provided data set with the first row's LOR values treated.
#' @export
#'
#' @examples
#' first_sample <- Kanto_pollutants[1,] #this selects only the first row (sample)
#' LOR_treated_first_sample <- treat_LORs(sample_data = first_sample,
#' pollutant_info = CatchThemAll.PRM::pollutant_info, treatment_method = "Zero")
#' print(LOR_treated_first_sample)
treat_LORs <- function(sample_data,
                            pollutant_info = CatchThemAll.PRM::pollutant_info,
                            treatment_method = "Zero"){ #
  if(treatment_method == "Zero"){
    sample_data <- sample_data %>%
      dplyr::mutate(dplyr::across(pollutant_info$pollutant,
                                  ~ gsub("<.*", "0.00000000001", ..1)))

  }else{
    for(i in 1:length(pollutant_info$pollutant)){


      #Gives index of first FALSE when searching for "<" symbol (first detect)
      #Suppressed warnings relate to the occurance no detect found (all LOR's)
      first_detect <- suppressWarnings(min(which(grepl("<",
                                                       sample_data[,pollutant_info$pollutant[i]]) == FALSE)))

      #All detects
      detects <- which(grepl("<",
                             sample_data[,pollutant_info$pollutant[i]]) == FALSE)


      if(treatment_method == "WQI"){
        for(j in 1:length(sample_data[,pollutant_info$pollutant[i]])){

          #Rules for treating LORs
          sample_data[j,
                      pollutant_info$pollutant[i]] <- ifelse(j < first_detect, "0.00000000001",
                                                             ifelse(j %in% detects,
                                                                    sample_data[j,
                                                                                pollutant_info$pollutant[i]],
                                                                    as.numeric(gsub(pattern="<",
                                                                                    replacement = "",
                                                                                    sample_data[j,
                                                                                                pollutant_info$pollutant[i]])) * pollutant_info$relative_LOR[i]))


        }
      } else
        if(treatment_method == "half") {
          for(j in 1:length(sample_data[,pollutant_info$pollutant[i]])){

            #Rules for treating LORs
            sample_data[j,
                        pollutant_info$pollutant[i]] <- ifelse(j < first_detect, "0.00000000001",
                                                               ifelse(j %in% detects,
                                                                      sample_data[j,
                                                                                  pollutant_info$pollutant[i]],
                                                                      as.numeric(gsub(pattern="<",
                                                                                      replacement = "",
                                                                                      sample_data[j,
                                                                                                  pollutant_info$pollutant[i]])) / 2))

          }
        } else
          if(treatment_method == "tenth") {
            for(j in 1:length(sample_data[,pollutant_info$pollutant[i]])){

              #Rules for treating LORs
              sample_data[j,
                          pollutant_info$pollutant[i]] <- ifelse(j < first_detect, "0.00000000001",
                                                                 ifelse(j %in% detects,
                                                                        sample_data[j,
                                                                                    pollutant_info$pollutant[i]],
                                                                        as.numeric(gsub(pattern="<",
                                                                                        replacement = "",
                                                                                        sample_data[j,
                                                                                                    pollutant_info$pollutant[i]])) / 10))

            }
          }
    }
  }
  sample_data
}



