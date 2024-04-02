#' Log Logistic Log Logistic (double curve) CDF Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#' that has a species sensitivity distribution that fits the Log Logistic distribution,
#' to run the equation on.
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
#' twenty3 <- c(0.000000001, 0.5, 2.7, 11)
#' #Imid 23 is used as its species sensitivity distribution plots fits Log Logistic Log Logistic
#' Log_Logistic_Log_Logistic_Formula(concentration = twenty3,
#' scale = pesticide_info$scale[pesticide_info$pesticide == "23"],
#' shape_location = pesticide_info$shape_location[pesticide_info$pesticide == "23"],
#' scale_2 = pesticide_info$scale_2[pesticide_info$pesticide == "23"],
#' shape_location_2 = pesticide_info$shape_location_2[pesticide_info$pesticide == "23"],
#' weight = pesticide_info$weight[pesticide_info$pesticide == "23"])
#'
Log_Logistic_Log_Logistic_Formula <- function(concentration, scale, shape_location,
                                              scale_2, shape_location_2, weight){
  ll1 <- stats::plogis(q = log(concentration), location = shape_location, scale = scale)
  ll2 <- stats::plogis(q = log(concentration), location = shape_location_2, scale = scale_2)
  PRM <- 100*(weight*ll1 + (1-weight)*ll2)
  PRM
}
