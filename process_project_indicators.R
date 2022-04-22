source("project_indicators.R")

indicatorYes <- function(data) {
  if (data == "PDI" & exists("PDI")) {
    data <- PDI
  } else if (data == "IRI" & exists("IRI")) {
    data <- IRI%>%data.table::rbindlist()
  } else {
    stop("Check if IRI/PDI exists or in the inputs")
  }
  
    data <- data%>%
      mutate(targetNum = data%>%
               select(contains("target "))%>%
               unlist()%>%
               as.vector()%>%
               str_remove_all("%")%>%
               str_remove_all(",")%>%
               str_replace_all(
                   "Yes","1"
                 )%>%
               str_replace_all(
                   "No","0"
                 )%>%
               str_trim(side = "both")%>%
               as.numeric(),
             statusNum = data$Status%>%
               unlist()%>%
               as.vector()%>%
               str_remove_all("%")%>%
               str_remove_all(",")%>%
               str_replace_all(
                 "Yes","1"
               )%>%
               str_replace_all(
                 "No","0"
               )%>%
               str_trim(side = "both")%>%
               as.numeric(),
             targetReached = statusNum>=targetNum
             )
    }

PDI <- indicatorYes("PDI")
IRI <- indicatorYes("IRI")
