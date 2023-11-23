#' Log-Normal CDF Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#'  that has a species sensitivity distribution that fits a log normal log normal distribution,
#'  to run the equation on.
#' @param shape_location The mu/location value for the log normal equation for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.
#' @param scale The sigma/scale value for the log normal equation for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.

#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' random <- c(0.000000001, 0.5, 2.7, 11)
#' Log_Normal_Formula(concentration = random,
#' shape_location = 0.23,
#' scale = 1.3)


# Compute the log-normal CDF for the given x to find PRM
Log_Normal_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- 100*stats::pnorm(q = log(concentration), mean = shape_location, sd = scale)
  PRM
}
