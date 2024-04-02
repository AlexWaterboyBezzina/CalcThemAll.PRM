## code to prepare `Kanto_pesticides` dataset goes here
library(vroom)
library(dplyr)

Kanto_pesticides <- vroom::vroom("~/GitHub/Kanto_pesticides_OG22.csv")
Kanto_pesticides <- Kanto_pesticides %>% select(-1)

#usethis::use_data(Kanto_pesticides, overwrite = TRUE)
