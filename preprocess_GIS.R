source("ETL_GIS.R")
source("project_recipients.R")

readNHFR()
governmentFacility()
getConstruction(F)

# equipment_sites <- equipment_ambulance%>%
#   mutate(facility_name = toupper(facility_name))%>%
#   anti_join(government_facilities, by = c("facility_name" = "Facility.Name"))

merged_recipients <- merge(government_facilities,
                           recipients_equipment,
                           by.x = "Facility.Name",
                           by.y = "facility_name")%>%
  replace(is.na(.), "")

merged_GIS <- merge(government_facilities,
                    construction_status,
                    by.x = "Facility.Name",
                    by.y = "facility")%>%
  replace(is.na(.), "")%>%
  select(Facility.Name,
         Longitude,
         Latitude,
         Official.Website,
         amount,
         project_description,
         year,
         status,
         site_photos)%>%
  mutate(status = status%>%str_replace_all("_", " ")%>%str_to_sentence)
  
merged_GIS <- merged_GIS %>% mutate(popup = case_when(
                                      site_photos=="" ~
                                        paste(
                                          "<strong>", Facility.Name, "</strong>", "<br>",
                                          "<a href=", Official.Website, ">", Official.Website, "</a>", "<br>",
                                          "Project Year:", year, "<br>",
                                          project_description, "<br>",
                                          "Project Budget:", format(amount, big.mark = ","), "<br>",
                                          "Status:", status
                                          ),
                                      !is.na(site_photos) ~paste(
                                        "<strong>", Facility.Name, "</strong>", "<br>",
                                        "<a href=", Official.Website, ">", Official.Website, "</a>", "<br>",
                                        "Project Year:", year, "<br>",
                                        project_description, "<br>",
                                        "Project Budget:", if_else(
                                          !is.na(as.numeric(amount)),
                                          paste(format(as.numeric(amount), big.mark = ","), " PHP"),
                                          ""), "<br>",
                                        "Status:", status, "<br>",
                                        # ,
                                        "<a href=", site_photos, "> Site photos </a>"
                                        )
                                      )
                                    )

merged_GIS <- merged_GIS %>% mutate(popup =  paste(
    "<strong>", Facility.Name, "</strong>", "<br>",
    "<a href=", Official.Website, ">", Official.Website, "</a>", "<br>",
    "Project Year:", year, "<br>",
    project_description, "<br>",
    "Project Budget:", if_else(
      !is.na(as.numeric(amount)),
      paste(format(as.numeric(amount), big.mark = ","), " PHP"),
      ""), "<br>",
    "Status:", status, "<br>",
    if_else(
      site_photos=="",
      "",
      paste0("<a href=", site_photos, "> Site photos </a>")
      )
    )
    )

status_color <- colorFactor(c(default_red, default_green, default_blue),
                            domain = c("not_started", "ongoing", "completed"))

  
# plotted_GIS2 <- leaflet(merged_GIS) %>%
#   addProviderTiles(providers$OpenStreetMap)%>%
#   # addTiles(options = tileOptions(minZoom = 5.15)) %>%
#   addMarkers(lng = ~as.numeric(Longitude),
#                     lat = ~as.numeric(Latitude),
#                     popup = ~popup,
#                     icon = glyph_bed)
# 
# plotted_GIS2



# sample_map <- leaflet(gis_data) %>%
#   addTiles() %>%  # Add default OpenStreetMap map tiles
#   addMarkers(lng = ~as.numeric(longitude),
#              lat = ~as.numeric(latitude),
#              popup= ~popup
#              )


