#' Find Sampling Year
#'
#' @param dates A date vector of sampling dates. Must be in yyyy-mm-dd format.
#' @param wet_season_split The first month of the sampling year in numeric
#' e.g. July = 7.  July (7) is used as the default as this is the
#' first month of the Queensland wet season.
#'
#' @return A factored character vector
#' @export
#'
#' @examples
#' dates <- as.Date(c("2014-03-04", "2014-12-30", "2015-06-12"))
#' sampling_years <- find_Sampling_Year(dates) #cut of date
find_Sampling_Year <- function(dates, wet_season_split = 7){

  mnth <- lubridate::month(dates)
  yr <- lubridate::year(dates)
  sampleYr <- character(length(dates))

  for(i in 1:length(dates)){
    if(mnth[i] >= wet_season_split)
      sampleYr[i] <- paste(yr[i], "-", yr[i]+1, sep="")
    else
      if(mnth[i] < wet_season_split)
        sampleYr[i] <- paste(yr[i]-1, "-", yr[i], sep="")

      i+1
  }

  as.factor(sampleYr)
}
