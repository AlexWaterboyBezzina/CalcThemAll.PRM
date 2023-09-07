#' Analyte Information for Pesticide Risk Metric Calculations (Reference Table)
#'
#' A reference table for PRM calculations in this package that include Pesticide information
#' such as type, species sensitivity distribution distributions and relevant equation variables.
#'
#' @format ## `Pesticide_Info`
#' A data frame with 24 rows and 18 columns:
#' \describe{
#'   \item{analyte}{Pesticide name}
#'   \item{relative_LOR}{The relative Limit of Reporting replacement value}
#'   \item{Pesticide.Type}{The pesticide method of effect}
#'   \item{Distribution.Type}{The species sensetivity distribution shape/type}
#'   \item{log.aplha, alpha, log.beta, beta, log.b, b, log.c, c, log.k, k, local.log.alpha, local.alpha, local.log.beta,
#'   local.beta}{Species sensativity distribution variables used in PRM calculations}
#'   ...
#' }
#' @source <https://www.publications.qld.gov.au/dataset/method-development-pesticide-risk-metric-baseline-condition-of-waterways-to-gbr/resource/c65858f9-d7ba-4aef-aa4f-e148f950220f>
"Pesticide_Info"


#' Kanto Region Pesticide Concentration Values (Example Data Set)
#'
#' A subset of pesticide concentration data for all pesticides in "Pesticide_Info" from the Kanto region
#'
#' @format ## `Kanto_pesticides`
#' A data frame with 808 rows and 26 columns:
#' \describe{
#'   \item{Site Name}{Site name}
#'   \item{Date}{Sampling date}
#'   \item{Ametryn, Atrazine, Chlorpyrifos, Diuron, Fipronil, Fluroxypyr, Haloxyfop (acid), Hexazinone,
#'   Imazapic, Imidacloprid, Isoxaflutole metabolite (DKN), MCPA, Metolachlor, Metribuzin, Metsulfuron methyl,
#'   Pendimethalin, Prometryn, Simazine, Tebuthiuron, Terbuthylazine, Triclopyr, 2,4-D, Bromacil
#'   Diazinon}{Pesticide concentration values in ug/L}
#'   ...
#' }
#' @source <https://bulbapedia.bulbagarden.net/wiki/Kanto>
"Kanto_pesticides"
