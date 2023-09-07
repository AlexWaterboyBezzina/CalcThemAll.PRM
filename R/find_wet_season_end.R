#' Find Wet Season End Date
#'
#' @param wet_season_start A vector of dates signifying the first day
#' of the wet season for site year combinations.
#' @param wet_season_length The length of the wet season in days.
#'
#' @return A character vector
#' @export
#'
#' @examples
#' wet_season_start_dates <- as.Date(c("2014-10-04", "2014-12-30", "2015-09-12"))
#' wet_season_end_dates <- find_wet_season_end(wet_season_start_dates)
#' #cut of date for the sampling year will be last day of June
find_wet_season_end <- function(wet_season_start, wet_season_length = 182) {
  end <- (as.POSIXct(wet_season_start, format = "%Y-%m-%d") + wet_season_length*86400)
  return(end)
}
