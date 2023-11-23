## code to prepare `Kanto_pesticides` dataset goes here
library(vroom)
library(dplyr)
library(janitor)

Kanto_pesticides <- vroom::vroom("~/GitHub/Kanto_Pesticides.csv")
#Kanto_pesticides <- Kanto_pesticides %>% clean_names()
#Kanto_pesticides <- Kanto_pesticides %>% rename(any_of(c("Site Name" = "site_name", "Date" = "date", "Ametryn" = "ametryn", "Atrazine" = "atrazine", "Chlorpyrifos" = "chlorpyrifos", "Diuron" = "diuron", "Fipronil" = "fipronil", "Fluroxypyr" = "fluroxypyr",
 #                                                        "Haloxyfop (acid)" = "haloxyfop_acid", "Hexazinone" = "hexazinone", "Imazapic" = "imazapic", "Imidacloprid" = "imidacloprid", "Isoxaflutole metabolite (DKN)" = "isoxaflutole_metabolite_dkn",
  #                                                       "MCPA" = "mcpa", "Metribuzin" = "metribuzin", "Metsulfuron methyl" = "metsulfuron_methyl", "Metolachlor" = "metolachlor", "Pendimethalin" = "pendimethalin", "Prometryn" = "prometryn", "Simazine" = "simazine",
   #                                                      "Tebuthiuron" = "tebuthiuron", "Terbuthylazine" = "terbuthylazine", "Triclopyr" = "triclopyr", "2,4-D" = "x2_4_d", "Metsulfuron methyl" = "metsulfuron", "Haloxyfop (acid)" = "haloxyfop", "Isoxaflutole metabolite (DKN)" = "isoxaflutole")))
#
#
#Kanto_pesticides$`Site Name`[Kanto_pesticides$`Site Name` == "Sandy Creek at Homebush"] <- "Lavendar Town"
#Kanto_pesticides$`Site Name`[Kanto_pesticides$`Site Name` == "Barratta Creek at Northcote"] <- "Cerulean City"
#Kanto_pesticides$`Site Name`[Kanto_pesticides$`Site Name` == "Tully River at Euramo"] <- "Mt Moon"
#Kanto_pesticides$`Site Name`[Kanto_pesticides$`Site Name` == "Daintree River at Lower Daintree"] <- "Viridian Forest"

#usethis::use_data(Kanto_pesticides, overwrite = TRUE)
