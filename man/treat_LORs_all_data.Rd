% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/treat_LORs_all_data.R
\name{treat_LORs_all_data}
\alias{treat_LORs_all_data}
\title{Treat a whole data set's LOR values}
\usage{
treat_LORs_all_data(
  raw_data,
  pesticide_info = CalcThemAll.PRM::pesticide_info,
  wet_season_split = 7,
  treatment_method = "WQI"
)
}
\arguments{
\item{raw_data}{A data set of raw pesticide concentration values in individual columns
that match the pesticide names in the "pesticide_info" data frame.
This data set should also include a "Date" column and "Site Name" column.
A reference data set can be seen in the "Canto_pesticides" data frame provided in this package,
your data should mirror these column headings.}

\item{pesticide_info}{The reference table which contains all relevant information for
calculations. It is recommended that the "pesticide_info" data set included in this
package be used and if you wish to include more or less pesticides you can appended
them with the relevant information to this table. If you are creating your own table you must
ensure that the pesticide name column is title "pesticides" and the relative LOR replacement
column is "relative_LOR" for the function to run.}

\item{wet_season_split}{The first month of the sampling year in numeric e.g. July = 7.
July (7) is used as the default as this is the first month of the Queensland wet season.
This is only required for the LOR replacement method and if needed.}

\item{treatment_method}{Select how to treat the LOR values with either the default "WQI"
representing the Queensland Department of Environment & Science Water Quality Monitoring &
Investigations team's method for replacing LORs or "Zero" which replaces them with
a negligible numeric value.}
}
\value{
returns the raw_data frame with the LOR values replaced by their specified
treatment values. PRM calculations can now be run on the returned data.
}
\description{
Treat a whole data set's LOR values
}
\examples{
Canto_pesticides_LOR_treated <- treat_LORs_all_data(raw_data = Canto_pesticides,
pesticide_info = CalcThemAll.PRM::pesticide_info)
head(Canto_pesticides_LOR_treated)

}
