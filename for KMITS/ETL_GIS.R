readNHFR <- function(folder = "geotags") {
  csvs <- list.files(folder, "[.]csv")
  nhfr <- lapply(csvs, function(x) read.csv(paste0(folder,"/", x)))
  nhfr <- data.table::rbindlist(nhfr, fill = T)
  
  .GlobalEnv$nhfr <- nhfr%>%select(contains("Facility.Code"),
                                   contains("PSGC"),
                                   Facility.Name,
                                   Longitude,
                                   Latitude,
                                   Official.Website,
                                   Health.Facility.Type,
                                   Ownership.Major.Classification,
                                   Ownership.Sub.Classification.for.Government.facilities)%>%
    filter(Health.Facility.Type %in% c("Hospital",
                                       "Infirmary",
                                       "Provincial Health office",
                                       "Municipal Health Office",
                                       "City Health Office"))
}

governmentFacility <- function(file = nhfr) {
  .GlobalEnv$government_facilities <- file%>%filter(
    Ownership.Major.Classification == "Government")
}

getConstruction <- function (.refresh_deliverables = F) {
  if (.refresh_deliverables) {
    drive_download(as_id("1hOZ0EP__NtLOlU3WPdFTAT889HowH7RisivBrJfHYDg"),
                   "project_deliverables",
                   overwrite = T)
    }
  assign("construction_status",
         read_xlsx("project_deliverables.xlsx", sheet = "civil_works"),
         envir = .GlobalEnv)
  }


# gis_data <- read_xlsx("GPS Points of Civil Works for mapping.xlsx",
#                       sheet = "GPS Points",
#                       col_types = "text"
#                       )
# 
# gis_data <- gis_data%>%mutate(
#   popup = if_else(
#     is.na(link),
#     paste(
#       "<strong>", facility_name, "</strong>", "<br>",
#       project_description, "<br>",
#       as.character(amount), "<br>",
#       construction_status
#     ),
#     paste(
#       "<strong>", facility_name, "</strong>", "<br>",
#       project_description, "<br>",
#       as.character(amount), "<br>",
#       construction_status, "<br>",
#       "<a href=", link, "> Site photos </a>"
#     )
#   )
# )
# 
# sample_map <- leaflet(gis_data) %>%
#   addTiles() %>%  # Add default OpenStreetMap map tiles
#   addMarkers(lng = ~as.numeric(longitude),
#              lat = ~as.numeric(latitude),
#              popup= ~popup
#              )
