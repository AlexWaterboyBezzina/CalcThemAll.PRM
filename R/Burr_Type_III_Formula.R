#' Burr Type III (Inverse Burr) Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pollutant,
#'  that has a species sensitivity distribution that fits the Burr Type III distribution,
#'  to run the equation on.
#' @param scale The Burr Type III scale/b value for the selected pollutant.
#' These can be found in the "pollutant_info" data frame provided in this package.
#' If you are including other pollutants you will need to append them with their
#'  respective distribution variables to the "pollutant_info" data frame.
#' @param shape_location The Burr Type III c/shape value for the selected pollutant.
#' These can be found in the "pollutant_info" data frame provided in this package.
#' If you are including other pollutants you will need to append them
#'  with their respective distribution variables to the "pollutant_info" table.
#' @param shape_location_2 The Burr Type III k/shape value for the selected pollutant.
#' These can be found in the "pollutant_info" data frame provided in this package.
#' If you are including other pollutants you will need to append them
#'  with their respective distribution variables to the "pollutant_info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' #Chlorpyrifos is used as its species sensitivity distribution plot fits Burr Type III
#' Chlorpyrifos <- c(0.000000001, 0.5, 2.7, 11)
#' Burr_Type_III_Formula(concentration = Chlorpyrifos,
#' scale = pollutant_info$scale[pollutant_info$pollutant == "Chlorpyrifos"],
#' shape_location = pollutant_info$shape_location[pollutant_info$pollutant == "Chlorpyrifos"],
#' shape_location_2 = pollutant_info$shape_location_2[pollutant_info$pollutant == "Chlorpyrifos"])
Burr_Type_III_Formula <- function(concentration, scale, shape_location, shape_location_2){
  concentration <- as.numeric(concentration)
  PRM <- 1/'^'((1+'^'((scale/concentration),shape_location)), shape_location_2)*100
  PRM
}


