## code to prepare `Pesticide_Info` dataset goes here
#{SSD_params <- read.csv("~/GitHub/SSD_params.csv")
#SSD_params <- SSD_params %>% dplyr::filter(Day < 41)
#SSD_params$Day <- sub("^", "Imidacloprid day ", SSD_params$Day)
#SSD_params <- SSD_params %>% dplyr::rename("analyte" = "Day", "Distribution.type" = "dist")

 # SSD_params$term[SSD_params$term == "pmix"] <- "weight"
 # SSD_params$term[SSD_params$term == "locationlog"] <- "shape_location"
 # SSD_params$term[SSD_params$term == "locationlog1"] <- "shape_location"
#  SSD_params$term[SSD_params$term == "locationlog2"] <- "shape_location_2"
 # SSD_params$term[SSD_params$term == "scalelog"] <- "scale"
 # SSD_params$term[SSD_params$term == "scalelog1"] <- "scale"
#  SSD_params$term[SSD_params$term == "scalelog2"] <- "scale_2"
 # SSD_params$term[SSD_params$term == "meanlog1"] <- "shape_location"
 # SSD_params$term[SSD_params$term == "meanlog2"] <- "shape_location_2"
##  SSD_params$term[SSD_params$term == "sdlog1"] <- "scale"
#  SSD_params$term[SSD_params$term == "sdlog2"] <- "scale_2"
#  SSD_params$Distribution.type[SSD_params$Distribution.type == "lgumbel"] <- "Log-Gumbel"
#  SSD_params$Distribution.type[SSD_params$Distribution.type == "llogis_llogis"] <- "Log-Logistic Log-Logistic"
#  SSD_params$Distribution.type[SSD_params$Distribution.type == "lnorm_lnorm"] <- "Log-Normal Log-Normal"


#SSD_params <- SSD_params %>% dplyr::select(analyte, term, est, Distribution.type)
#SSD_params <- SSD_params %>% tidyr::pivot_wider(names_from = term, values_from = c(est))
#SSD_params$Pesticide.type <- "Imidacloprid"
#SSD_params$relative_LOR <- 1 * 10 ^ -11

#SSD_params$analyte <- as.character(SSD_params$analyte)
#pollutant_info <- read.csv("~/GitHub/Pesticide_Info.csv")
#pollutant_info$Distribution.type[pollutant_info$Distribution.type == "Log-logistic"] <- "Log-Logistic"
#pollutant_info <- pollutant_info %>% dplyr::full_join(SSD_params)
#pollutant_info <- pollutant_info %>% dplyr::rename("pollutant" = "analyte", "pollutant_type" = "Pesticide.type",
                                           # "distribution_type" = "Distribution.type")



#}
#pollutant_info <- add_your_own_pollutant(pollutants = "Imidacloprid Base", pollutant_types = "Imidacloprid", relative_LORs = (1 * 10 ^ -11), distribution_types = "Log-Gumbel",
                     #  scales = 2.09364, shape_locations = 0.835654, pollutant_info = pollutant_info)

#write_csv(pollutant_info, "pollutant_info_imid.csv")
pollutant_info <- read.csv("~/GitHub/pollutant_info_OG22.csv")
pollutant_info <- pollutant_info %>% select(-1)
#usethis::use_data(pollutant_info, overwrite = TRUE)
