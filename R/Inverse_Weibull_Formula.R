#' Inverse Weibull Formula
#'
#' @param concentration The vector of concentration values for a selected pollutant,
#' that has a species sensitivity distribution that fits the Inverse Weibull distribution,
#' to run the equation on.
#' @param shape_location The Inverse Weibull shape/alpha value for the selected pollutant.
#' These can be found in the "pollutant_info" data frame provided in this package.
#' If you are including other pollutants you will need to append them with their
#' respective distribution variables to the "pollutant_info" table.
#' @param scale The Inverse Weibull scale/beta value for the selected pollutant.
#' These can be found in the "pollutant_info" data frame provided in this package.
#' If you are including other pollutants you will need to append them with their
#' respective distribution variables to the "pollutant_info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' Hexazinone <- c(0.000000001, 0.5, 2.7, 11)
#' #Hexazinone is used as its species sensitivity distribution plots fits Inverse Weibull
#' Inverse_Weibull_Formula(concentration = Hexazinone,
#' shape_location = pollutant_info$shape_location[pollutant_info$pollutant == "Hexazinone"],
#' scale = pollutant_info$scale[pollutant_info$pollutant == "Hexazinone"])
Inverse_Weibull_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- exp(-1/'^'((concentration*scale), shape_location))*100
  PRM
}
