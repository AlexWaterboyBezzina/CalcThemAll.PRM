#' Add New Pesticides to the PRM Calculation Information Table
#'
#' @param analytes A vector of pesticide names
#' @param relative_LORs A vector of relative Limit of Reporting
#' replacement values
#' @param Pesticide.types A vector of the new pesticide's types
#' @param Distribution.types A vector of the new pesticide's species
#' sensitive distribution types
#' @param log.alphas A vector of log alpha values (if applicable, else put NA)
#' @param alphas A vector of alpha values (if applicable, else put NA)
#' @param log.betas A vector of log.beta values (if applicable, else put NA)
#' @param betas A vector of beta values (if applicable, else put NA)
#' @param log.bs A vector of log.b values (if applicable, else put NA)
#' @param bs A vector of b values (if applicable, else put NA)
#' @param log.cs A vector of log.c values (if applicable, else put NA)
#' @param cs A vector of c values (if applicable, else put NA)
#' @param log.ks A vector of log.k values (if applicable, else put NA)
#' @param ks A vector of k values (if applicable, else put NA)
#' @param local.log.alphas A vector of local.log.alpha values (if applicable, else put NA)
#' @param local.alphas A vector of local.alpha values (if applicable, else put NA)
#' @param local.log.betas A vector of local.log.beta values (if applicable, else put NA)
#' @param local.betas A vector of local.beta values (if applicable, else put NA)
#'
#' @return A data frame
#' @export
#'
#' @examples
#' new <- add_your_own_pesticide(analytes = "Poison", relative_LORs = 0.023,
#' Pesticide.types = "Poison", Distribution.types = "Log-logistic", log.alphas = 0.09,
#' alphas = 0.19, log.betas = 0.014, betas = 0.42)
#' multiple_new <- add_your_own_pesticide(analytes = c("Poison", "Acid", "Sludge"),
#' relative_LORs = c(0.03, 0.01, 0.5), Pesticide.types = c("Ghost", "Bug", "Poison"),
#' Distribution.types = c("Inverse Weibull", "Log-logistic", "Burr Type III"),
#' log.alphas = c(NA, 0.002, NA),
#' alphas = c(NA, 0.04, NA), log.betas = c(NA, 0.07, NA),
#' betas = c(NA, 0.14, NA), log.bs = c(NA, NA, 0.08), bs = c(NA, NA, 0.16),
#' log.cs = c(NA, NA, 0.03), cs = c(NA, NA, 0.09), log.ks = c(NA, NA, 0.09),
#' ks = c(NA, NA, 0.3), local.log.alphas = c(0.05, NA, NA),
#' local.alphas = c(0.15, NA, NA), local.log.betas = c(0.072, NA, NA),
#' local.betas = c(0.42, NA, NA))
add_your_own_pesticide <- function(analytes, relative_LORs, Pesticide.types,
                                   Distribution.types, log.alphas = NA,
                                   alphas = NA, log.betas = NA,
                                   betas = NA, log.bs = NA, bs = NA,
                                   log.cs = NA, cs = NA, log.ks = NA,
                                   ks = NA, local.log.alphas = NA,
                                   local.alphas = NA, local.log.betas = NA,
                                   local.betas = NA){

  new_pesties <- data.frame(analyte = c(analytes), relative_LOR = c(relative_LORs),
                            Pesticide.type = c(Pesticide.types),
                            Distribution.type = c(Distribution.types),
                            log.alpha = c(log.alphas),
                            alpha = c(alphas), log.beta = c(log.betas),
                            beta = c(betas), log.b = log.bs,
                            b = c(bs), log.c = c(log.cs), c = c(cs),
                            log.k = c(log.ks), k = c(ks),
                            local.log.alpha = c(local.log.alphas),
                            local.alpha = c(local.alphas),
                            local.log.beta = c(local.log.betas),
                            local.beta = c(local.betas))

  new_pesticide_info <- CatchThemAll.PRM::Pesticide_Info %>% rbind(new_pesties)
  return(as.data.frame(new_pesticide_info))
}
