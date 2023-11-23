#' Inverse Weibull Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#' that has a species sensitivity distribution that fits the Inverse Weibull distribution,
#' to run the equation on.
#' @param shape_location The Inverse Weibull shape/alpha value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "Pesticide_Info" table.
#' @param scale The Inverse Weibull scale/beta value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "Pesticide_Info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' Hexazinone <- c(0.000000001, 0.5, 2.7, 11)
#' #Hexazinone is used as its species sensitivity distribution plots fits Inverse Weibull
#' Inverse_Weibull_Formula(concentration = Hexazinone,
#' shape_location = Pesticide_Info$shape_location[Pesticide_Info$analyte == "Hexazinone"],
#' scale = Pesticide_Info$scale[Pesticide_Info$analyte == "Hexazinone"])
Inverse_Weibull_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- exp(-1/'^'((concentration*scale), shape_location))*100
  PRM
}
