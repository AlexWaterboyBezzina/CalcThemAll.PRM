#' Pesticide Information for Pesticide Risk Metric Calculations (Reference Table)
#'
#' A reference table for PRM calculations in this package that include pesticide information
#' such as type, species sensitivity distribution distributions and relevant equation variables.
#'
#' @format ## `pesticide_info`
#' A data frame with 62 rows and 9 columns:
#' \describe{
#'   \item{pesticide}{Pesticide name}
#'   \item{relative_LOR}{The relative Limit of Reporting replacement value}
#'   \item{pesticide_type}{The pesticide method of effect}
#'   \item{distribution_type}{The species sensetivity distribution shape/type}
#'   \item{shape_location, shape_location2, scale, scale2,
#'   weight}{Species sensativity distribution variables used in PRM calculations}
#'   ...
#' }
#' @source <https://www.publications.qld.gov.au/dataset/method-development-pesticide-risk-metric-baseline-condition-of-waterways-to-gbr/resource/c65858f9-d7ba-4aef-aa4f-e148f950220f>
"pesticide_info"


#' Kant0 Region Pesticide Concentration Values (Example Data Set)
#'
#' A subset of pesticide concentration data for all pesticides in "pesticide_info" from the Kant0 region
#'
#' @format ## `Kant0_pesticides`
#' A data frame with 808 rows and 64 columns:
#' \describe{
#'   \item{Site Name}{Site name}
#'   \item{Date}{Sampling date}
#'   \item{Ametryn, Atrazine, Chlorpyrifos, Diuron, Fipronil, Fluroxypyr, Haloxyfop (acid), Hexazinone,
#'   Imazapic, Imidacloprid, Isoxaflutole metabolite (DKN), MCPA, Metolachlor, Metribuzin, Metsulfuron methyl,
#'   Pendimethalin, Prometryn, Simazine, Tebuthiuron, Terbuthylazine, Triclopyr, 2,4-D, Bromacil
#'   Diazinon, Imidicloprid1:40}{pesticide concentration values in ug/L}
#'   ...
#' }
#' @source <https://bulbapedia.bulbagarden.net/wiki/Kant0>
"Kant0_pesticides"
