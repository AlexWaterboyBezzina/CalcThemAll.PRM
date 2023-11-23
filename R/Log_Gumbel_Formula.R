#' Log Gumbel CDF Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#'  that has a species sensitivity distribution that fits a log gumbel distribution,
#'  to run the equation on.
#' @param shape_location The mu/location value for the log gumbel equation for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.
#' @param scale The beta/scale value for the log gumbel equation for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.

#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' #Imidacloprid is used as its species sensitivity distribution plot fits log-normal log-normal
#' Imidacloprid <- c(0.000000001, 0.5, 2.7, 11)
#' Log_Gumbel_Formula(concentration = Imidacloprid,
#' shape_location = Pesticide_Info$shape_location[Pesticide_Info$analyte == "Imidacloprid"],
#' scale = Pesticide_Info$scale[Pesticide_Info$analyte == "Imidacloprid"])


# Compute the Gamma CDF for the given concentration to find PRM
Log_Gumbel_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- 100*VGAM::pgumbel(q = log(concentration), location = shape_location, scale = scale)
  PRM
}
