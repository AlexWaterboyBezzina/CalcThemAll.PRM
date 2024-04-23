#' Log-Normal Log-Normal (double curve) CDF Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#' that has a Log Normal Log Normal species sensitivity distribution,
#' to run the equation on.
#' @param shape_location The mu/shape value for the first Log Normal equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#' @param scale The sigma/scale value for the first Log Normal equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "pesticide_info" table.
#' @param shape_location_2 The mu/shape value for the second Log Normal equation for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "pesticide_info" table.
#' @param scale_2 The sigma/scale value for the second Log Normal equation for the selected pesticide.
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
#' LogN_LogN_pesticide_concentrations <- c(4.79E-05, 0.000225588)
#' Log_Normal_Log_Normal_Formula(concentration = LogN_LogN_pesticide_concentrations,
#' shape_location = -5.596431, scale = 2.061943,
#' shape_location_2 = 0.01174954, scale_2 = 0.9134796, weight = 0.5733126)


# Compute the log-normal log-normal (double curve) CDF for the given x to find PRM
Log_Normal_Log_Normal_Formula <- function(concentration, shape_location, scale,
                                          shape_location_2, scale_2, weight){
  concentration <- as.numeric(concentration)
  PRM <- 100*(weight * stats::pnorm((log(concentration) - shape_location) / scale) +
                (1 - weight) * stats::pnorm((log(concentration) - shape_location_2) / scale_2))
  PRM
}
