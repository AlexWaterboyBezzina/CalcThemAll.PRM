#' Log-Normal Log-Normal (double curve) CDF Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#'  that has a species sensitivity distribution that fits a log normal log normal distribution,
#'  to run the equation on.
#' @param shape_location The mu/shape value for the first log normal equation for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.
#' @param scale The sigma/scale value for the first log normal equation for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.
#' @param shape_location_2 The mu/shape value for the second log normal equation for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.
#' @param scale_2 The sigma/scale value for the second log normal equation for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.
#' @param weight The weight parameter for combining the two equations for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "Pesticide_Info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' #Imidacloprid 38 is used as its species sensitivity distribution plot fits log-normal log-normal
#' Imid38 <- c(0.000000001, 0.5, 2.7, 11)
#' Log_Normal_Log_Normal_Formula(concentration = Imid38,
#' shape_location = Pesticide_Info$shape_location[Pesticide_Info$analyte == "38"],
#' scale = Pesticide_Info$scale[Pesticide_Info$analyte == "38"],
#' shape_location_2 = Pesticide_Info$shape_location_2[Pesticide_Info$analyte == "38"],
#' scale_2 = Pesticide_Info$scale_2[Pesticide_Info$analyte == "38"],
#' weight = Pesticide_Info$weight[Pesticide_Info$analyte == "38"])


# Compute the log-normal log-normal (double curve) CDF for the given x to find PRM
Log_Normal_Log_Normal_Formula <- function(concentration, shape_location, scale,
                                          shape_location_2, scale_2, weight){
  concentration <- as.numeric(concentration)
  PRM <- 100*(weight * stats::pnorm((log(concentration) - shape_location) / scale) +
                (1 - weight) * stats::pnorm((log(concentration) - shape_location_2) / scale_2))
  PRM
}
