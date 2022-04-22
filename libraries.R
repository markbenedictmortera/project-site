#load all required library for ETL
library(tidyverse)
library(flexdashboard)
library(ggplot2)
library(htmlwidgets)
library(kableExtra)
library(DT)
library(leaflet)
library(readxl)
library(googledrive)
library(data.table)

#### default settings----
options(scipen=99999)

#### default colors----
default_red <- "#f8766d"
default_blue <- "#00BFC4"
default_green <- "#7CAE00"




#### Designated Labs for testing covid----
designated_labs_testing <- c("Baguio General Hospital and Medical Center",
                             "Lung Center of the Philippines (LCP)",
                             "Research Institute for Tropical Medicine (RITM)",
                             "San Lazaro Hospital (SLH)",
                             "Vicente Sotto Memorial Medical Center (VSMMC)",
                             "Southern Philippines Medical Center (SPMC)",
                             "Caraga Regional Hospital GeneXpert Laboratory"
)

#### Designated Labs for lab stock----
designated_labs_stock <- c("Baguio General Hospital and Medical Center",
                           "Lung Center of the Philippines",
                           "Research Institute for Tropical Medicine",
                           "San Lazaro Hospital",
                           "Vicente Sotto Memorial Medical Center",
                           "Southern Philippines Medical Center",
                           "Caraga Regional Hospital"
)

## diagnostic supplies  ####
diagnostic_supplies <- c(
  "diagnostic_boxes_supplies_row_stockout",
  "diagnostic_safety_supplies_stockout",
  "diagnostic_manual_supplies_stockout",
  "diagnostic_ppe_supplies_stockout",
  "diagnostic_gloves_supplies_stockout",
  "diagnostic_micropipette_supplies_stockout",
  "diagnostic_transport_supplies_row_stockout",
  "diagnostic_kit_supplies_stockout"
)

##diagnostic equipment ####
#there is a typo in speciment printer
diagnostic_equipment <- c(
  "specimen_refrigerator_row_functional",
  "specimen_rack_row_functional",
  "speciment_printer_row_functional", 
  "specimen_microcentrifuge_row_functional",
  "specimen_minifuge_row_functional",
  "specimen_micropippete_row_functional"
)
###PPE Stockout Column Names
ppe_stockout_columns <- c("ppe_checklist_n95mask_stockout",
                          "ppe_checklist_gown_stockout",
                          "ppe_checklist_surgicalmask_stockout",
                          "ppe_checklist_gloves_stockout",
                          "ppe_checklist_ppe_stockout")

# ###Testing labs in NCR ----
# NCR_labs <- NCR_labs <- read.csv("NCR_laboratories.csv")

