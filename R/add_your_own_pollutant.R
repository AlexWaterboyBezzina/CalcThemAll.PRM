#' Add New Pollutants to the PRM Calculation Information Table
#'
#' @param pollutants A vector of pollutant names
#' @param relative_LORs A vector of relative limit of reporting
#' replacement values
#' @param pollutant_types A vector of the new pollutant's types
#' @param distribution_types A vector of the new pollutant's species
#' sensitive distribution types
#' @param shape_locations A vector of shape/location values (if applicable, else put NA)
#' @param shape_location_2s A vector of secondary shape/location values (if applicable, else put NA)
#' @param scales A vector of scale values (if applicable, else put NA)
#' @param scale_2s A vector of secondary scale values (if applicable, else put NA)
#' @param weights A vector of weight values (if applicable, else put NA)
#'
#' @return A data frame
#' @export
#'
#' @examples
#' new <- add_your_own_pollutant(pollutants = "Poison", relative_LORs = 0.023,
#' pollutant_types = "Poison", distribution_types = "Log-Normal", scales = 0.09,
#' shape_locations = 0.014)
#' multiple_new <- add_your_own_pollutant(pollutants = c("Poison", "Acid", "Sludge"),
#' relative_LORs = c(0.03, 0.01, 0.5), pollutant_types = c("Ghost", "Bug", "Poison"),
#' distribution_types = c("Log-Normal", "Log-Logistic Log-Logistic", "Burr Type III"),
#' scales = c(0.3, 0.002, 2),
#' scale_2s = c(NA, 0.04, NA),  shape_locations = c(1, 0.07, 3),
#' shape_location_2s = c(NA, 0.14, 2.3), weights = c(NA, 0.08, NA))
add_your_own_pollutant <- function(pollutants, relative_LORs, pollutant_types,
                                   distribution_types, shape_locations = NA,
                                   shape_location_2s = NA, scales = NA,
                                   scale_2s = NA, weights = NA){

  new_pollutants <- data.frame(pollutant = c(pollutants), relative_LOR = c(relative_LORs),
                            pollutant_type = c(pollutant_types),
                            distribution_type = c(distribution_types),
                            shape_location = c(shape_locations),
                            shape_location_2 = c(shape_location_2s), scale = c(scales),
                            scale_2 = c(scale_2s), weight = c(weights))

  new_pollutant_info <- CatchThemAll.PRM::pollutant_info %>% rbind(new_pollutants)
  return(as.data.frame(new_pollutant_info))
}
