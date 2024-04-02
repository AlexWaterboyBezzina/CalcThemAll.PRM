#' Log Gumbel CDF Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pollution,
#'  that has a species sensitivity distribution that fits a log gumbel distribution,
#'  to run the equation on.
#' @param shape_location The mu/location value for the log gumbel equation for the selected pollution.
#' These can be found in the "pollution_info" data frame provided in this package.
#' If you are including other pollutions you will need to append them with their
#'  respective distribution variables to the "pollution_info" table.
#' @param scale The beta/scale value for the log gumbel equation for the selected pollution.
#' These can be found in the "pollution_info" data frame provided in this package.
#' If you are including other pollutions you will need to append them with their
#'  respective distribution variables to the "pollution_info" table.

#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' #Imidacloprid is used as its species sensitivity distribution plot fits log-normal log-normal
#' Imidacloprid <- c(0.000000001, 0.5, 2.7, 11)
#' Log_Gumbel_Formula(concentration = Imidacloprid,
#' shape_location = pesticide_info$shape_location[pesticide_info$pesticide == "Imidacloprid"],
#' scale = pesticide_info$scale[pesticide_info$pesticide == "Imidacloprid"])


# Compute the Gamma CDF for the given concentration to find PRM
Log_Gumbel_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- 100*VGAM::pgumbel(q = log(concentration), location = shape_location, scale = scale)
  PRM
}
