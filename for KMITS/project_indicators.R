#Project Development Indicators -----

PDI <- tibble(
  Indicators = c(
    "Percentage of hospitals with personal protective equipment and infection control products and supplies according to DOH requirements, without stock-outs in preceding one month",
    "Percentage of designated laboratories with COVID-19 diagnostic equipment, test kits, and reagents, without stock-outs in preceding one month",
    "Number of acute healthcare facilities with isolation capacity according to DOH-established standards",
    "Share of project-targeted health workers received COVID vaccine",
    "Share of project-targeted population given full dose of COVID-19 vaccination"
    ),
  `Target (2021)` = c(
    "65%",
    "50%",
    "40",
    "80%",
    "70%"
    ),
  Status = c(
    "80%",
    "71%",
    "43",
    "92%",
    "82%"
    )
  )

IRI <- list(
  `Strengthening Emergency COVID-19 Health Care Response` = 
    tibble(
      Indicators = c(
        "Standard design for hospital isolation and treatment centers to manage Severe Acute Respiratory Infections (SARI) patients is finalized (Yes/No)",
        "Number of ventilators provided to hospitals",
        "Number of health staff trained in infection prevention and control per DOH-approved protocols",
        "Share of hospitals designated as vaccination sites in project areas having adequate and functioning cold chain equipment (CCE) maintaining the temperature required for the COVID-19 vaccine assigned",
        "Share of project-targeted vaccinated population who rated as satisfactory the COVID-19 vaccination service received",
        "Share of project-targeted population reporting adverse event following immunization (AEFI) having received additional care and free treatment",
        "National COVID-19 vaccination tools developed",
        "Eligibility for vaccination criteria include barangay health workers (BHWs) among priority group"
        ),
      `Target (2021)` = c(
        "Yes",
        "500",
        "13000",
        "100%",
        "80%",
        "80%",
        "Yes",
        "Yes"
        ),
      Status = c(
        "Yes",
        "500",
        "17505",
        "100%",
        "97%",
        "74%",
        "Yes",
        "Yes"
      )
    ),
  `Strengthening Laboratory Capacity at National and Sub-National Level` = 
    tibble(
      Indicators = c(
        "Daily capacity of a designated national laboratory (RITM) in conducting COVID-19 diagnostic tests",
        "Daily capacity of a designated sub-national laboratory (Davao) in conducting COVID-19 diagnostic tests",
        "Daily capacity of a designated sub-national laboratory (Cebu) in conducting COVID-19 diagnostic tests"
      ),
      `Target (2021)` = c(
        "1200",
        "500",
        "500"
      ),
      Status = c(
        "117",
        "459",
        "465"
      )
    ),
  `Implementation Management and Monitoring and Evaluation` = 
    tibble(
      Indicators = c(
        "M&E system established to monitor project activities",
        "Functional asset management system is in place, independently reviewed on 6-monthly basis",
        "Percentage of grievances resolved to the satisfaction of the complainant within timeframe specified in the GRM for stakeholders"
        ),
      `Target (2021)` = c(
        "Yes",
        "Yes",
        "80%"
      ),
      Status = c(
        "Yes",
        "Yes",
        "100%"
        )
    )
)






