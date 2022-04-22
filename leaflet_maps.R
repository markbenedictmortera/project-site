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

plotted_recipient <- leaflet()%>%
  addTiles()%>%
  addMarkers(
    data = merged_recipients%>%filter(project_description == "Mechanical Ventilator"),
    lng = ~as.numeric(Longitude),
    lat = ~as.numeric(Latitude),
    icon = bed_icon,
    clusterOptions = markerClusterOptions(maxClusterRadius = 25),
    group = "Mech Vent")%>%
  addMarkers(
    data = merged_recipients%>%filter(project_description == "Portable X-ray"),
    lng = ~as.numeric(Longitude),
    lat = ~as.numeric(Latitude),
    icon = bed_icon,
    clusterOptions = markerClusterOptions(maxClusterRadius = 30),
    group = "X-ray")%>%
  addMarkers(
    data = merged_recipients%>%filter(project_description == "RT-PCR machine"),
    lng = ~as.numeric(Longitude),
    lat = ~as.numeric(Latitude),
    icon = bed_icon,
    clusterOptions = markerClusterOptions(maxClusterRadius = 10),
    group = "RT-PCR machine")%>%
  addLayersControl(
      baseGroups = c("RT-PCR machine", "X-ray", "Mech Vent"),
      options = layersControlOptions(collapsed = FALSE)
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
