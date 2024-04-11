#' Burr Type III (Inverse Burr) Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pesticide,
#' that has a Burr Type III shaped species sensitivity distribution,
#' to run the equation on.
#' @param scale The Burr Type III scale/b value for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "pesticide_info" data frame.
#' @param shape_location The Burr Type III c/shape value for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them
#' with their respective distribution variables to the "pesticide_info" table.
#' @param shape_location_2 The Burr Type III k/shape value for the selected pesticide.
#' These can be found in the "pesticide_info" data frame provided in this package.
#' If you are including other pesticides you will need to append them
#' with their respective distribution variables to the "pesticide_info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' #Chlorpyrifos is used as its species sensitivity distribution fits Burr Type III
#' Chlorpyrifos <- c(0.000000001, 0.5, 2.7, 11)
#' Burr_Type_III_Formula(concentration = Chlorpyrifos,
#' scale = pesticide_info$scale[pesticide_info$pesticide == "Chlorpyrifos"],
#' shape_location = pesticide_info$shape_location[pesticide_info$pesticide == "Chlorpyrifos"],
#' shape_location_2 = pesticide_info$shape_location_2[pesticide_info$pesticide == "Chlorpyrifos"])
Burr_Type_III_Formula <- function(concentration, scale, shape_location, shape_location_2){
  concentration <- as.numeric(concentration)
  PRM <- 1/'^'((1+'^'((scale/concentration),shape_location)), shape_location_2)*100
  PRM
}


