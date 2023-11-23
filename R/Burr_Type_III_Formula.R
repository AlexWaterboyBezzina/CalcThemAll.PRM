#' Burr Type III (Inverse Burr) Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#'  that has a species sensitivity distribution that fits the Burr Type III distribution,
#'  to run the equation on.
#' @param scale The Burr Type III scale/b value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.
#' @param shape_location The Burr Type III c/shape value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them
#'  with their respective distribution variables to the "Pesticide_Info" table.
#' @param shape_location_2 The Burr Type III k/shape value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them
#'  with their respective distribution variables to the "Pesticide_Info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' #Chlorpyrifos is used as its species sensitivity distribution plot fits Burr Type III
#' Chlorpyrifos <- c(0.000000001, 0.5, 2.7, 11)
#' Burr_Type_III_Formula(concentration = Chlorpyrifos,
#' scale = Pesticide_Info$scale[Pesticide_Info$analyte == "Chlorpyrifos"],
#' shape_location = Pesticide_Info$shape_location[Pesticide_Info$analyte == "Chlorpyrifos"],
#' shape_location_2 = Pesticide_Info$shape_location_2[Pesticide_Info$analyte == "Chlorpyrifos"])
Burr_Type_III_Formula <- function(concentration, scale, shape_location, shape_location_2){
  concentration <- as.numeric(concentration)
  PRM <- 1/'^'((1+'^'((scale/concentration),shape_location)), shape_location_2)*100
  PRM
}


