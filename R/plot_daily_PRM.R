#' Plot Daily Average PRM Values for a Single Site/Sampling Year
#'
#' @param daily_PRM_data A data set of calculated daily average PRM values for
#' a single site and sampling year. This data set should also include a "Date",
#' "Sampling Year" and "Site Name" column.
#' @param wet_season_start The date of the start of the wet season for this
#' site sampling year.
#' @param wet_season_length The length of the wet season in days.
#' @param PRM_group This specifies the name of the column to plot.
#' The daily average calculations gives PRM for each pesticide type and
#' a total in different columns. "Total" is set as
#' the default as it is the PRM value for all pesticides.
#' @param title TRUE or FALSE value to include a title.
#' @param legend Does the legend show "Numerical" or "Categorical" values for
#' PRM values on the plot.
#'
#' @return A plotly plot
#' @export
#'
#' @examples
#' Canto_pesticides_LOR_treated <- treat_LORs_all_data(raw_data = Canto_pesticides,
#' pesticide_info = CatchThemAll.PRM::pesticide_info)
#' Canto_daily_PRM <- calculate_daily_average_PRM(LOR_treated_data = Canto_pesticides_LOR_treated)
#' Violet_Town_2017_2018_PRM <- Canto_daily_PRM %>%
#' dplyr::filter(.data$`Sampling Year` ==  "2017-2018" &  .data$`Site Name` == "Violet Town")
#' plot_daily_PRM(Violet_Town_2017_2018_PRM, "2017-10-02", PRM_group = "Total PRM")
#'
#' @importFrom dplyr .data
plot_daily_PRM <- function(daily_PRM_data, wet_season_start = NULL, wet_season_length = 182,
                           PRM_group = "Total PRM", title = FALSE, legend = "Numerical") {


  title1 <- if(title == TRUE){list(text = paste(daily_PRM_data$`Site Name`[1],
                                                "-", daily_PRM_data$`Sampling Year`[1],
                                                "-", PRM_group), font = list(size = 20))} else{
                                                  NULL
                                                }

  daily_PRM_data <- dplyr::rename(daily_PRM_data, "Daily.PRM" = PRM_group)
  daily_PRM_data$Daily.PRM <- round(daily_PRM_data$Daily.PRM, 2)
  levels <- c(-Inf, 1, 5, 10, 20, Inf)
  labels <- if(legend == "Categorical") {c("Very Low", "Low", "Moderate", "High", "Very High")} else {c("<1", ">1 to 5", ">5 to 10", ">10 to 20", ">20")}
  daily_PRM_data <- daily_PRM_data %>% dplyr::mutate(Risk = cut(daily_PRM_data$Daily.PRM, levels, labels = labels))


  shape <- if(is.null(wet_season_start)){NULL} else {list(CatchThemAll.PRM::plot_wet_season_window(wet_season_start, wet_season_length))}

  p <- plotly::plot_ly(
    daily_PRM_data,
    type = "scatter",
    height = "33%",
    mode = "markers",
    x = ~ Date,
    y = ~ Daily.PRM,
    yaxis = "y1",
    color = ~ Risk,
    marker = list(size = 9,

                  line = list(color = "black",
                              width = 1)),
    colors = if(legend == "Categorical") {c(
      "Very High" = "red",
      "High" = "orange",
      "Moderate" = "yellow",
      "Low" = "light green",
      "Very Low" = "dark green"
    )} else {c(
      ">20" = "red",
      ">10 to 20" = "orange",
      ">5 to 10" = "yellow",
      ">1 to 5" = "light green",
      "<1" = "dark green"
    )}
  )

  if(!is.null(wet_season_start)){
    if(!is.na(wet_season_start[1])){
      p <- p %>% plotly::add_annotations(
        text = "Wet Season Window", x = (as.numeric(wet_season_start)+30), y = 1.01, yref = "paper", textposition = "top", showarrow = FALSE, font = list(size = 14, color = "#4bacc6")
      )}}

  p <- p %>% plotly::layout(
    title = title1,

    yaxis = list(
      side = "left",
      title = "Species Affected (%)",
      showgrid = F,
      range = list(0, max(daily_PRM_data$Daily.PRM)+1),
      showline = T,
      ticks = "outside", tickfont = list(size = 15), titlefont = list(size = 20)
    ),

    xaxis = list(
      anchor = "y1",
      showgrid = F,
      range = c(as.numeric(
        as.POSIXct(
          zoo::as.yearmon(
            lubridate::year(lubridate::ymd(
              (gsub("-.*", "", daily_PRM_data$`Sampling Year`[1])), truncated = 2L)) + 6 / 12))) * 1000,
        as.numeric(as.POSIXct(zoo::as.yearmon(lubridate::year(lubridate::ymd(
          (gsub(".*-", "", daily_PRM_data$`Sampling Year`[1])), truncated = 2L)) + 6 / 12))) * 1000),
      type = "date",
      ticks = "outside",
      title = F, tickfont = list(size = 15), titlefont = list(size = 20)
    ),

    legend = list(x = 0, y = 1.13, orientation = "h", title = list(text = "<b> Species Affected (%) </b>"), font = list(size = 12)),
    plot_bgcolor = "#EBEFF2",
    margin =list(
      l = 25,
      r = 25,
      b = 15,
      t = 85,
      pad = 4
    ), shapes = shape) %>%

    plotly::config(
      toImageButtonOptions = list(
        format = "png",
        filename = "myplot",
        width = 1501,
        height = 610
      ), displaylogo = FALSE,
      modeBarButtonsToRemove = c("zoomIn2d", "zoomOut2d", "hoverCompareCartesian", "lasso2d")
    )
  p
}
