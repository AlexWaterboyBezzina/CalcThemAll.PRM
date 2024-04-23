#' Log Logistic Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#' that has a Log Logistic shaped species sensitivity distribution,
#' to run the equation on.
#' @param scale The Log Logistic alpha/scale value for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#' @param shape_location The Log Logistic beta/shape value for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' Imazapic <- c(0.000000001, 0.5, 2.7, 11)
#' #Imazapic is used as its species sensitivity distribution plots fits Log Logistic
#' Log_Logistic_Formula(concentration = Imazapic,
#' scale = pesticide_info$scale[pesticide_info$pesticide == "Imazapic"],
#' shape_location = pesticide_info$shape_location[pesticide_info$pesticide == "Imazapic"])
#'
Log_Logistic_Formula <- function(concentration, scale, shape_location){
  concentration <- as.numeric(concentration)
  PRM <- 1/(1+'^'((concentration/scale), (-1*shape_location)))*100
  PRM
}
