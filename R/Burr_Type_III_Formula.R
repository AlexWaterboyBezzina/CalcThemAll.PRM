#' Burr Type III (Inverse Burr) Equation Formula
#'
#' @param analyte_column The column of concentration values for a selected pesticide,
#'  that has a species sensitivity distribution that fits the Burr Type III distribution,
#'  to run the equation on.
#' @param parameter_b The Burr Type III b value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#'  respective distribution variables to the "Pesticide_Info" table.
#' @param parameter_c The Burr Type III c value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them
#'  with their respective distribution variables to the "Pesticide_Info" table.
#' @param parameter_k The Burr Type III k value for the selected pesticide.
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
#' Burr_Type_III_Formula(analyte_column = Chlorpyrifos,
#' parameter_b = Pesticide_Info$b[Pesticide_Info$analyte == "Chlorpyrifos"],
#' parameter_c = Pesticide_Info$c[Pesticide_Info$analyte == "Chlorpyrifos"],
#' parameter_k = Pesticide_Info$k[Pesticide_Info$analyte == "Chlorpyrifos"])
Burr_Type_III_Formula <- function(analyte_column, parameter_b, parameter_c, parameter_k){
  analyte_column_numeric <- as.numeric(analyte_column)
  PRM <- 1/'^'((1+'^'((parameter_b/analyte_column_numeric),parameter_c)), parameter_k)*100
  PRM
}
