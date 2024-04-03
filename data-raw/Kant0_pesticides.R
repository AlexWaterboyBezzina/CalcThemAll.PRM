## code to prepare `Kant0_pesticides` dataset goes here
library(vroom)
library(dplyr)

Kant0_pesticides <- vroom::vroom("~/GitHub/Kant0_pesticides_OG22.csv")

Kant0_pesticides <- Kant0_pesticides %>% select(-c(1,2))

#usethis::use_data(Kant0_pesticides, overwrite = TRUE)
