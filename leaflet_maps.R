source("preprocess_GIS.R")


bed_icon <- awesomeIcons(
  "fa-bed",
  "fa",
  markerColor = "white",
  iconColor = "black"
)

free_bed_icon <- makeIcon(
  "./icons/bed.png",
  iconWidth = 20,
  iconHeight = 20
)

plotted_GIS <- leaflet(merged_GIS
) %>%
  addProviderTiles(providers$Esri.WorldStreetMap)%>%
  addMarkers(lng = ~as.numeric(Longitude),
             lat = ~as.numeric(Latitude),
             popup = ~popup,
             icon = bed_icon,
             group = "Civil Works (Isolation Rooms)",
             clusterOptions = markerClusterOptions(maxClusterRadius = 30))

plotted_GIS
