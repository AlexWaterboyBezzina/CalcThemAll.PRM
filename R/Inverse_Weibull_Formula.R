#' Inverse Weibull Formula
#'
#' @param analyte_column The column of concentration values for a selected pesticide,
#' that has a species sensitivity distribution that fits the Inverse Weibull distribution,
#' to run the equation on.
#' @param parameter_local.alpha The Inverse Weibull local alpha value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "Pesticide_Info" table.
#' @param parameter_local.beta The Inverse Weibull local beta value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "Pesticide_Info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' Hexazinone <- c(0.000000001, 0.5, 2.7, 11)
#' #Hexazinone is used as its species sensitivity distribution plots fits Inverse Weibull
#' Inverse_Weibull_Formula(analyte_column = Hexazinone,
#' parameter_local.alpha = Pesticide_Info$local.alpha[Pesticide_Info$analyte == "Hexazinone"],
#' parameter_local.beta = Pesticide_Info$local.beta[Pesticide_Info$analyte == "Hexazinone"])
Inverse_Weibull_Formula <- function(analyte_column, parameter_local.alpha, parameter_local.beta){
  analyte_column_numeric <- as.numeric(analyte_column)
  PRM <- exp(-1/'^'((analyte_column_numeric*parameter_local.beta), parameter_local.alpha))*100
  PRM
}
