## code to prepare `Pesticide_Info` dataset goes here
{SSD_params <- read.csv("~/GitHub/SSD_params.csv")
SSD_params <- SSD_params %>% filter(Day < 41)
SSD_params <- SSD_params %>% rename("analyte" = "Day", "Distribution.type" = "dist")

  SSD_params$term[SSD_params$term == "pmix"] <- "weight"
  SSD_params$term[SSD_params$term == "locationlog"] <- "shape_location"
  SSD_params$term[SSD_params$term == "locationlog1"] <- "shape_location"
  SSD_params$term[SSD_params$term == "locationlog2"] <- "shape_location_2"
  SSD_params$term[SSD_params$term == "scalelog"] <- "scale"
  SSD_params$term[SSD_params$term == "scalelog1"] <- "scale"
  SSD_params$term[SSD_params$term == "scalelog2"] <- "scale_2"
  SSD_params$term[SSD_params$term == "meanlog1"] <- "shape_location"
  SSD_params$term[SSD_params$term == "meanlog2"] <- "shape_location_2"
  SSD_params$term[SSD_params$term == "sdlog1"] <- "scale"
  SSD_params$term[SSD_params$term == "sdlog2"] <- "scale_2"
  SSD_params$Distribution.type[SSD_params$Distribution.type == "lgumbel"] <- "Log-Gumbel"
  SSD_params$Distribution.type[SSD_params$Distribution.type == "llogis_llogis"] <- "Log-Logistic Log-Logistic"
  SSD_params$Distribution.type[SSD_params$Distribution.type == "lnorm_lnorm"] <- "Log-Normal Log-Normal"


SSD_params <- SSD_params %>% select(analyte, term, est, Distribution.type)
SSD_params <- SSD_params %>% pivot_wider(names_from = term, values_from = c(est))
SSD_params$Pesticide.type <- "Insecticide"
SSD_params$relative_LOR <- 0.000137000

SSD_params$analyte <- as.character(SSD_params$analyte)
Pesticide_Info <- read.csv("~/GitHub/Pesticide_Info.csv")
Pesticide_Info$Distribution.type[Pesticide_Info$Distribution.type == "Log-logistic"] <- "Log-Logistic"
Pesticide_Info <- Pesticide_Info %>% full_join(SSD_params)
}
#usethis::use_data(Pesticide_Info, overwrite = TRUE)
