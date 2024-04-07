#' Log Gumbel CDF Equation Formula
#'
#' @param concentration The vector of concentration values for a selected pollution,
#'  that has a species sensitivity distribution that fits a log gumbel distribution,
#'  to run the equation on.
#' @param shape_location The mu/location value for the log gumbel equation for the selected pollution.
#' These can be found in the "pollution_info" data frame provided in this package.
#' If you are including other pollutions you will need to append them with their
#'  respective distribution variables to the "pollution_info" table.
#' @param scale The beta/scale value for the log gumbel equation for the selected pollution.
#' These can be found in the "pollution_info" data frame provided in this package.
#' If you are including other pollutions you will need to append them with their
#'  respective distribution variables to the "pollution_info" table.

#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' #This Example should produce roughly 1% and 5% PRM values
#' LogGumbel_pesticide_concentrations <- c(0.095957794, 0.245881898)
#' Log_Gumbel_Formula(concentration = LogGumbel_pesticide_concentrations,
#' shape_location = 0.9980581, scale = 2.188285)


# Compute the Gamma CDF for the given concentration to find PRM
Log_Gumbel_Formula <- function(concentration, shape_location, scale){
  concentration <- as.numeric(concentration)
  PRM <- 100*VGAM::pgumbel(q = log(concentration), location = shape_location, scale = scale)
  PRM
}
