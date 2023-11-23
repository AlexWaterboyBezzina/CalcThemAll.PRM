#' Log Logistic Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#' that has a species sensitivity distribution that fits the Log Logistic distribution,
#' to run the equation on.
#' @param scale The log logistic alpha/scale value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "Pesticide_Info" table.
#' @param shape_location The log logistic beta/shape value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "Pesticide_Info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' Imazapic <- c(0.000000001, 0.5, 2.7, 11)
#' #Imazapic is used as its species sensitivity distribution plots fits Log Logistic
#' Log_Logistic_Formula(concentration = Imazapic,
#' scale = Pesticide_Info$scale[Pesticide_Info$analyte == "Imazapic"],
#' shape_location = Pesticide_Info$shape_location[Pesticide_Info$analyte == "Imazapic"])
#'
Log_Logistic_Formula <- function(concentration, scale, shape_location){
  concentration <- as.numeric(concentration)
  PRM <- 100*stats::plogis(q = log(concentration), location = shape_location, scale = scale)
  PRM
}
