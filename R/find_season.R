#' Find Sample's Season (Wet or Dry)
#'
#' @param wet_season_start_dates A vector of dates signifying the first day
#' of the wet season for site year combinations.
#' @param sampling_dates A date vector of sampling dates.
#' Must be in yyyy-mm-dd format.
#' @param wet_season_length The length of the wet season in days.
#'
#' @return A character vector
#' @export
#'
#' @examples
#' dates <- as.Date(c("2014-12-04", "2014-10-30", "2015-11-12"))
#' wet_start_dates <- as.Date(c("2014-10-04", "2014-12-30", "2015-09-12"))
#' Seasons <- find_season(wet_start_dates, sampling_dates = dates)
#' #cut of date for the sampling year will be last day of June
find_season <- function(wet_season_start_dates, sampling_dates, wet_season_length = 182) {

  end_dates <- find_wet_season_end(wet_season_start_dates, wet_season_length)
  season <- character(length(wet_season_start_dates))

  for(i in 1:length(wet_season_start_dates)) {
    if(wet_season_start_dates[i] <= sampling_dates[i] & sampling_dates[i] < end_dates[i])
      season[i] <- "Wet"
    else
      season[i] <-"Dry"
  }

  return(season)
}

