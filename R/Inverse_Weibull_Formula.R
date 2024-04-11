#' Inverse Weibull Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#' that has a Inverse Weibull shaped species sensitivity distribution,
#' to run the equation on.
#' @param shape_location The Inverse Weibull shape/alpha value for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#' @param scale The Inverse Weibull scale/beta value for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' Hexazinone <- c(0.000000001, 0.5, 2.7, 11)
#' #Hexazinone is used as its species sensitivity distribution plots fits Inverse Weibull
#' Inverse_Weibull_Formula(concentration = Hexazinone,
#' shape_location = pesticide_info$shape_location[pesticide_info$pesticide == "Hexazinone"],
#' scale = pesticide_info$scale[pesticide_info$pesticide == "Hexazinone"])
Inverse_Weibull_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- exp(-1/'^'((concentration*scale), shape_location))*100
  PRM
}
