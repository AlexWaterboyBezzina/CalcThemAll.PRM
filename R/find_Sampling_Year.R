#' Title
#'
#' @param dates A date vector from which Sampling Year will be determined. Must be in yyyy-mm-dd format.
#' @param wet_season_split The first month of the sampling year in numeric e.g. July = 7
#'
#' @return a factored character vector
#' @export
#'
#' @examples
#' dates <- as.Date("2014-03-04", "2014-12-30", "2015-06-12")
#' find_Sampling_Year <- (dates) #cut of date for the sampling year will be last day of June
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
