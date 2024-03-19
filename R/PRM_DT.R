#' PRM Data Table Function
#'
#' @param PRM_data a data frame of either daily average or wet season PRM values
#' @param fill_cols A vector of column names of pollutant groups to fill colour
#' with corresponding PRM risk category
#' @param colour_cols A vector of column names of pollutant groups to colour
#' text with corresponding PRM risk category
#'
#' @return a data table colour coded to PRM risk
#' @export
#'
#' @examples
#' Kanto_pollutants_LOR_treated <- treat_LORs_all_data(raw_data = Kanto_pollutants,
#' pollutant_info = CatchThemAll.PRM::pollutant_info)
#' Kanto_daily_PRM <- calculate_daily_average_PRM(LOR_treated_data = Kanto_pollutants_LOR_treated)
#' PRM_DT(PRM_data = Kanto_daily_PRM, fill_cols = "Total PRM",
#' colour_cols = c("PSII Herbicide PRM", "Other Herbicide PRM", "Insecticide PRM"))
#'
PRM_DT <- function(PRM_data, fill_cols = NULL, colour_cols = NULL){
  PRM_data <- PRM_data %>%
    dplyr::mutate_at(dplyr::vars(dplyr::matches("PRM")), ~round(., 2))

  DT::datatable(PRM_data, rownames = FALSE, options = list(scrollX = TRUE, pageLength = 10)) %>%
    DT::formatStyle(
      colour_cols,
      Color = DT::styleInterval(c(1.01, 5.01, 10.01, 20.01), c("forestgreen", "yellowgreen", "yellow",  "orange", "red")),
      fontWeight = "bold",
      backgroundColor = "#e0e0e0") %>%
    DT::formatStyle(
      fill_cols,
      backgroundColor = DT::styleInterval(c(1.01, 5.01, 10.01, 20.01), c("forestgreen", "yellowgreen", "yellow",  "orange", "red")),
      fontWeight = "bold")
}
