% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Log_Logistic_Log_Logistic_Formula.R
\name{Log_Logistic_Log_Logistic_Formula}
\alias{Log_Logistic_Log_Logistic_Formula}
\title{Log Logistic Log Logistic (double curve) CDF Formula}
\usage{
Log_Logistic_Log_Logistic_Formula(
  concentration,
  scale,
  shape_location,
  scale_2,
  shape_location_2,
  weight
)
}
\arguments{
\item{concentration}{The vector of concentration values for a selected pesticide,
that has a Log Logistic Log Logistic shaped species sensitivity distribution,
to run the equation on.}

\item{scale}{The alpha/scale value for the first Log Logistic equation for the selected pesticide.
These can be found in the "pesticide_info" data frame provided in this package.
If you are including other pesticides you will need to append them with their
respective distribution variables to the "pesticide_info" table.}

\item{shape_location}{The beta/shape value for the first Log Logistic equation for the selected pesticide.
These can be found in the "pesticide_info" data frame provided in this package.
If you are including other pesticides you will need to append them with their
respective distribution variables to the "pesticide_info" table.}

\item{scale_2}{The alpha/scale value for the second Log Logistic equation for the selected pesticide.
These can be found in the "pesticide_info" data frame provided in this package.
If you are including other pesticides you will need to append them with their
respective distribution variables to the "pesticide_info" table.}

\item{shape_location_2}{The beta/shape value for the second Log Logistic equation for the selected pesticide.
These can be found in the "pesticide_info" data frame provided in this package.
If you are including other pesticides you will need to append them with their
respective distribution variables to the "pesticide_info" table.}

\item{weight}{The weight parameter for combining the two equations for the selected pesticide.
These can be found in the "pesticide_info" data frame provided in this package.
If you are including other pesticides you will need to append them with their
respective distribution variables to the "pesticide_info" table.}
}
\value{
a numeric vector
}
\description{
Log Logistic Log Logistic (double curve) CDF Formula
}
\examples{
#This Example should produce roughly 1\% and 5\% PRM values
LogL_LogL_pesticide_concentrations <- c(0.00341453, 0.009854566)
Log_Logistic_Log_Logistic_Formula(concentration = LogL_LogL_pesticide_concentrations,
scale = 0.5823392, shape_location = -3.499604, scale_2 = 1.144555,
shape_location_2 = 1.100755, weight = 0.3585467)

}
