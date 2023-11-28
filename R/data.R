#' Pollutant Information for Pollutant Risk Metric Calculations (Reference Table)
#'
#' A reference table for PRM calculations in this package that include pollutant information
#' such as type, species sensitivity distribution distributions and relevant equation variables.
#'
#' @format ## `pollutant_info`
#' A data frame with 62 rows and 9 columns:
#' \describe{
#'   \item{pollutant}{Pollutant name}
#'   \item{relative_LOR}{The relative Limit of Reporting replacement value}
#'   \item{pollutant_type}{The pollutant method of effect}
#'   \item{distribution_type}{The species sensetivity distribution shape/type}
#'   \item{shape_location, shape_location2, scale, scale2,
#'   weight}{Species sensativity distribution variables used in PRM calculations}
#'   ...
#' }
#' @source <https://www.publications.qld.gov.au/dataset/method-development-pesticide-risk-metric-baseline-condition-of-waterways-to-gbr/resource/c65858f9-d7ba-4aef-aa4f-e148f950220f>
"pollutant_info"


#' Kanto Region Pollutant Concentration Values (Example Data Set)
#'
#' A subset of pollutant concentration data for all pollutants in "pollutant_info" from the Kanto region
#'
#' @format ## `Kanto_pollutants`
#' A data frame with 808 rows and 64 columns:
#' \describe{
#'   \item{Site Name}{Site name}
#'   \item{Date}{Sampling date}
#'   \item{Ametryn, Atrazine, Chlorpyrifos, Diuron, Fipronil, Fluroxypyr, Haloxyfop (acid), Hexazinone,
#'   Imazapic, Imidacloprid, Isoxaflutole metabolite (DKN), MCPA, Metolachlor, Metribuzin, Metsulfuron methyl,
#'   Pendimethalin, Prometryn, Simazine, Tebuthiuron, Terbuthylazine, Triclopyr, 2,4-D, Bromacil
#'   Diazinon, Imidicloprid1:40}{pollutant concentration values in ug/L}
#'   ...
#' }
#' @source <https://bulbapedia.bulbagarden.net/wiki/Kanto>
"Kanto_pollutants"
