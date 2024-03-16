#' Log Logistic Formula
#'
#' @param concentration The vector of concentration values for a selected pollutant,
#' that has a species sensitivity distribution that fits the Log Logistic distribution,
#' to run the equation on.
#' @param scale The log logistic alpha/scale value for the selected pollutant.
#' These can be found in the "pollutant_info" data frame provided in this package.
#' If you are including other pollutants you will need to append them with their
#' respective distribution variables to the "pollutant_info" table.
#' @param shape_location The log logistic beta/shape value for the selected pollutant.
#' These can be found in the "pollutant_info" data frame provided in this package.
#' If you are including other pollutants you will need to append them with their
#' respective distribution variables to the "pollutant_info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' Imazapic <- c(0.000000001, 0.5, 2.7, 11)
#' #Imazapic is used as its species sensitivity distribution plots fits Log Logistic
#' Log_Logistic_Formula(concentration = Imazapic,
#' scale = pollutant_info$scale[pollutant_info$pollutant == "Imazapic"],
#' shape_location = pollutant_info$shape_location[pollutant_info$pollutant == "Imazapic"])
#'
Log_Logistic_Formula <- function(concentration, scale, shape_location){
  concentration <- as.numeric(concentration)
  PRM <- 1/(1+'^'((concentration/scale), (-1*shape_location)))*100
  PRM
}
