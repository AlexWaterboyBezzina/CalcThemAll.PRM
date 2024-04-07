#' Log Logistic Log Logistic (double curve) CDF Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#' that has a species sensitivity distribution that fits the Log Logistic Log Logistic
#' distribution, to run the equation on.
#' @param scale The alpha/scale value for the first log logistic equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#' @param shape_location The beta/shape value for the first log logistic equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#' @param scale_2 The alpha/scale value for the second log logistic equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#' @param shape_location_2 The beta/shape value for the second log logistic equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#' @param weight The weight parameter for combining the two equations for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' #This Example should produce roughly 1% and 5% PRM values
#' LogL_LogL_pesticide_concentrations <- c(0.00341453, 0.009854566)
#' Log_Logistic_Log_Logistic_Formula(concentration = LogL_LogL_pesticide_concentrations,
#' scale = 0.5823392, shape_location = -3.499604, scale_2 = 1.144555,
#' shape_location_2 = 1.100755, weight = 0.3585467)
#'
Log_Logistic_Log_Logistic_Formula <- function(concentration, scale, shape_location,
                                              scale_2, shape_location_2, weight){
  ll1 <- stats::plogis(q = log(concentration), location = shape_location, scale = scale)
  ll2 <- stats::plogis(q = log(concentration), location = shape_location_2, scale = scale_2)
  PRM <- 100*(weight*ll1 + (1-weight)*ll2)
  PRM
}
