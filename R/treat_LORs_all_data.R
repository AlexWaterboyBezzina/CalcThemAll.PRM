#' Treat a whole data set's LOR values
#'
#' @param raw_data A data set of raw pesticide concentration values in individual columns
#' that match the pesticide names in the "pesticide_info" data frame.
#' This data set should also include a "Date" column and "Site Name" column.
#' A reference data set can be seen in the "Kanto_pesticides" data frame provided in this package,
#' your data should mirror these column headings.
#' @param pesticide_info The reference table which contains all relevant information for
#' calculations. It is recommended that the "pesticide_info" data set included in this
#' package be used and if you wish to include more or less pesticides you can appended
#' them with the relevant information to this table. If you are creating your own table you must
#' ensure that the pesticide name column is title "pesticides" and the relative LOR replacement
#' column is "relative_LOR" for the function to run.
#' @param wet_season_split The first month of the sampling year in numeric e.g. July = 7.
#' July (7) is used as the default as this is the first month of the Queensland wet season.
#' This is only required for the LOR replacement method and if needed.
#' @param treatment_method Select how to treat the LOR values with either the default "WQI"
#' representing the Queensland Department of Environment & Science Water Quality Monitoring &
#' Investigations team's method for replacing LORs or "Zero" which replaces them with
#' a negligible numeric value.
#'
#' @return returns the raw_data frame with the LOR values replaced by their specified
#' treatment values. PRM calculations can now be run on the returned data.
#' @export
#'
#' @examples
#' Kanto_pesticides_LOR_treated <- treat_LORs_all_data(raw_data = Kanto_pesticides,
#' pesticide_info = CatchThemAll.PRM::pesticide_info)
#' head(Kanto_pesticides_LOR_treated)
#'
treat_LORs_all_data <- function(raw_data, pesticide_info = CatchThemAll.PRM::pesticide_info,
                                wet_season_split = 7, treatment_method = "WQI") {
  raw_data <- as.data.frame(raw_data)
  raw_data$Date <- as.POSIXlt(raw_data$Date, tryFormats = c("%Y-%m-%d",
                                                            "%d/%m/%Y",
                                                            "%Y-%m-%d %H:%M:%OS",
                                                            "%Y-%m-%d %H:%M"))
  raw_data$"Sampling Year" <- find_Sampling_Year(raw_data$Date, wet_season_split)

  raw_data <- raw_data %>% dplyr::mutate(dplyr::across(dplyr::everything(), as.character))
  #Split dataset into list of dataframes by site and sampling year
  list_site_year_dataframes <- split(raw_data, f = list(raw_data$`Site Name`,
                                                        raw_data$`Sampling Year`),
                                     drop=TRUE)
  #Create copy of list_site_year_dataframes to replace with treated LORs
  updated_LOR_list <- list_site_year_dataframes


  #Apply treat_LORs_df to list of split dataframes and update with results
  for(k in 1:length(list_site_year_dataframes)){

    updated_LOR_list[[k]] <- treat_LORs(list_site_year_dataframes[[k]],
                                        pesticide_info, treatment_method)

    updated_LOR_list

  }


  #Concatenate list of split treated dataframes into a single dataset
  Treated_LORs <- do.call(rbind, updated_LOR_list)

  Treated_LORs <- Treated_LORs %>% dplyr::select("Site Name", "Sampling Year", "Date",
                                                 pesticide_info$pesticide)
  #return data frame
  return(dplyr::as_tibble(Treated_LORs))

}
