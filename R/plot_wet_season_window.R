#' Plot Wet Season Window Box on Daily PRM Plot
#'
#' @param wet_season_start The date of the start of the wet season for this
#' site sampling year.
#' @param wet_season_length The length of the wet season in days.
#'
#' @return A plotly shape
#' @export
#'
#' @examples
#' shape <- plot_wet_season_window(wet_season_start = "2017-08-01")
plot_wet_season_window <- function(wet_season_start = 0, wet_season_length = 182) {
  wet_season_start <- as.POSIXct(wet_season_start, format = "%Y-%m-%d")
  wet_season_end <- as.POSIXct(as.Date(wet_season_start,
                                       tryFormats = c("%Y-%m-%d",
                                                      "%d/%m/%Y",
                                                      "%Y-%m-%d %H:%M:%OS",
                                                      "%Y-%m-%d %H:%M")) + wet_season_length)
  list(
    type = "rect",
    layer = "below",
    fillcolor = "skyblue",
    line = list(color = "blue", dash ="dash"),
    opacity = 0.2,
    y0 = 0,
    y1 = 1,
    yref = "paper",
    x0 = wet_season_start,
    x1 = wet_season_end)


}
