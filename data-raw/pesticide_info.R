## code to prepare `pesticide_Info` dataset goes here
pesticide_info <- read.csv("~/GitHub/pesticide_info_OG22.csv")
pesticide_info <- pesticide_info %>% select(-1)
#usethis::use_data(pesticide_info, overwrite = TRUE)
