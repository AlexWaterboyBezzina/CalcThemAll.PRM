#' Add New Pollutants to the PRM Calculation Information Table
#'
#' @param analytes A vector of pollutant names
#' @param relative_LORs A vector of relative limit of reporting
#' replacement values
#' @param Pesticide.types A vector of the new pesticide's types
#' @param Distribution.types A vector of the new pesticide's species
#' sensitive distribution types
#' @param shape_location A vector of shape/location values (if applicable, else put NA)
#' @param shape_location_2 A vector of secondary shape/location values (if applicable, else put NA)
#' @param scale A vector of scale values (if applicable, else put NA)
#' @param scale_2 A vector of secondary scale values (if applicable, else put NA)
#' @param weight A vector of weight values (if applicable, else put NA)
#'
#' @return A data frame
#' @export
#'
#' @examples
#' new <- add_your_own_pesticide(analytes = "Poison", relative_LORs = 0.023,
#' Pesticide.types = "Poison", Distribution.types = "Log-Normal", scale = 0.09,
#' shape_location = 0.014)
#' multiple_new <- add_your_own_pesticide(analytes = c("Poison", "Acid", "Sludge"),
#' relative_LORs = c(0.03, 0.01, 0.5), Pesticide.types = c("Ghost", "Bug", "Poison"),
#' Distribution.types = c("Log-Normal", "Log-Logistic Log-Logistic", "Burr Type III"),
#' scale = c(0.3, 0.002, 2),
#' scale_2 = c(NA, 0.04, NA),  shape_location = c(1, 0.07, 3),
#' shape_location_2 = c(NA, 0.14, 2.3), weight = c(NA, 0.08, NA))
add_your_own_pesticide <- function(analytes, relative_LORs, Pesticide.types,
                                   Distribution.types, shape_location = NA,
                                   shape_location_2 = NA, scale = NA,
                                   scale_2 = NA, weight = NA){

  new_pesties <- data.frame(analyte = c(analytes), relative_LOR = c(relative_LORs),
                            Pesticide.type = c(Pesticide.types),
                            Distribution.type = c(Distribution.types),
                            shape_location = c(shape_location),
                            shape_location_2 = c(shape_location_2), scale = c(scale),
                            scale_2 = c(scale_2), weight = weight)

  new_pesticide_info <- CatchThemAll.PRM::Pesticide_Info %>% rbind(new_pesties)
  return(as.data.frame(new_pesticide_info))
}
