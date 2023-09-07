#' Add New Pesticides to the PRM Calculation Information Table
#'
#' @param analytes
#' @param relative_LORs
#' @param Pesticide.types
#' @param Distribution.types
#' @param log.alphas
#' @param alphas
#' @param log.betas
#' @param betas
#' @param log.bs
#' @param bs
#' @param log.cs
#' @param cs
#' @param log.ks
#' @param ks
#' @param local.log.alphas
#' @param local.alphas
#' @param local.log.betas
#' @param local.betas
#'
#' @return
#' @export
#'
#' @examples
add_your_own_pesticide <- function(analytes, relative_LORs, Pesticide.types,
                                   Distribution.types, log.alphas = NULL,
                                   alphas = NULL, log.betas = NULL,
                                   betas = NULL, log.bs = NULL, bs = NULL,
                                   log.cs = NULL, cs = NULL, log.ks = NULL,
                                   ks = NULL, local.log.alphas = NULL,
                                   local.alphas = NULL, local.log.betas = NULL,
                                   local.betas = NULL){

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
