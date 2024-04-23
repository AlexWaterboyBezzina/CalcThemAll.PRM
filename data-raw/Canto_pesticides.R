## code to prepare `Canto_pesticides` data set goes here
library(vroom)
library(dplyr)

Canto_pesticides <- vroom::vroom("~/GitHub/Canto_pesticides_OG22.csv")

Canto_pesticides <- Canto_pesticides %>% select(-1)

#usethis::use_data(Canto_pesticides, overwrite = TRUE)
