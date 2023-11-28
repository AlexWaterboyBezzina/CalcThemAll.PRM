#' Gamma CDF Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pollutant,
#'  that has a species sensitivity distribution that fits a gamma distribution,
#'  to run the equation on.
#' @param shape_location The k/shape value for the gamma equation for the selected pollutant.
#' These can be found in the "pollutant_info" data frame provided in this package.
#' If you are including other pollutants you will need to append them with their
#'  respective distribution variables to the "pollutant_info" table.
#' @param scale The scale/theta value for the gamma equation for the selected pollutant.
#' These can be found in the "pollutant_info" data frame provided in this package.
#' If you are including other pollutants you will need to append them with their
#'  respective distribution variables to the "pollutant_info" table.

#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' #Imidacloprid is used as its species sensitivity distribution plot fits log-normal log-normal
#' Imidacloprid <- c(0.000000001, 0.5, 2.7, 11)
#' Gamma_Formula(concentration = Imidacloprid,
#' shape_location = pollutant_info$shape_location[pollutant_info$pollutant == "Imidacloprid"],
#' scale = pollutant_info$scale[pollutant_info$pollutant == "Imidacloprid"])


# Compute the Gamma CDF for the given concentration to find PRM
Gamma_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- 100*gdist::pdist("gamma", q = concentration, shape = shape_location, scale = scale)
  PRM
}
