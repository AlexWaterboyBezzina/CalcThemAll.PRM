#' Gamma CDF Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#'  that has a species sensitivity distribution that fits a gamma distribution,
#'  to run the equation on.
#' @param shape_location The k/shape value for the gamma equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "pesticide_info" table.
#' @param scale The scale/theta value for the gamma equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "pesticide_info" table.

#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' gamma_pesticide_concentrations <- c(0.000000001, 0.5, 2.7, 11)
#' Gamma_Formula(concentration = gamma_pesticide_concentrations,
#' shape_location = 0.23, scale = 1.3)


# Compute the Gamma CDF for the given concentration to find PRM
Gamma_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- 100*stats::pgamma(q = concentration, shape = shape_location, scale = scale)
  PRM
}

