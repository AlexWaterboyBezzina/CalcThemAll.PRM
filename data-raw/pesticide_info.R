## code to prepare `pesticide_Info` dataset goes here
library(dplyr)
pesticide_info <- read.csv("~/GitHub/pesticide_info_OG22.csv")
pesticide_info <- pesticide_info %>% rename("pesticide" = "pollutant",
                                      "pesticide_type" = "pollutant_type")
pesticide_info <- pesticide_info %>% select(-1)
#usethis::use_data(pesticide_info, overwrite = TRUE)
