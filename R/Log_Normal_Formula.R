#' Log-Normal CDF Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#' that has a Log Normal shaped species sensitivity distribution,
#' to run the equation on.
#' @param shape_location The mu/location value for the Log Normal equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#' @param scale The sigma/scale value for the Log Normal equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.

#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' LogN_pesticide_concentrations <- c(0.000000001, 0.5, 2.7, 11)
#' Log_Normal_Formula(concentration = LogN_pesticide_concentrations,
#' shape_location = 0.23, scale = 1.3)


# Compute the log-normal CDF for the given x to find PRM
Log_Normal_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- 100*stats::pnorm(q = log(concentration), mean = shape_location, sd = scale)
  PRM
}
