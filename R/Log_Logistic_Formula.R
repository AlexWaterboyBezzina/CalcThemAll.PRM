#' Log Logistic Formula
#'
#' @param analyte_column The column of concentration values for a selected pesticide,
#' that has a species sensitivity distribution that fits the Log Logistic distribution,
#' to run the equation on.
#' @param parameter_alpha The log logistic alpha value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "Pesticide_Info" table.
#' @param parameter_beta The log logistic beta value for the selected pesticide.
#' These can be found in the "Pesticide_Info" data frame provided in this package.
#' If you are including other pesticides you will need to append them with their
#' respective distribution variables to the "Pesticide_Info" table.
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' Imazapic <- c(0.000000001, 0.5, 2.7, 11)
#' #Imazapic is used as its species sensitivity distribution plots fits Log Logistic
#' Log_Logistic_Formula(analyte_column = Imazapic,
#' parameter_alpha = Pesticide_Info$alpha[Pesticide_Info$analyte == "Imazapic"],
#' parameter_beta = Pesticide_Info$beta[Pesticide_Info$analyte == "Imazapic"])
Log_Logistic_Formula <- function(analyte_column, parameter_alpha, parameter_beta){
  analyte_column_numeric <- as.numeric(analyte_column)
  PRM <- 1/(1+'^'((analyte_column_numeric/parameter_alpha), (-1*parameter_beta)))*100
  PRM
}
