#Project Development Indicators -----

PDI <- tibble(
  Indicators = c(
    "Percentage of hospitals with personal protective equipment and infection control products and supplies according to DOH requirements, without stock-outs in preceding one month (Percentage)",
    "Percentage of designated laboratories with COVID-19 diagnostic equipment, test kits, and reagents, without stock-outs in preceding one month (Percentage)",
    "Number of acute healthcare facilities with isolation capacity according to DOH-established standards (Number)",
    "Percentage of project-targeted health care workers (HCW) received primary doses of COVID vaccine (Percentage)",
    "Percentage of project-financed vaccines administered and reported in line with the DOH's protocol (Percentage)"
    ),
  `Target (2022)` = c(
    "80%",
    "80%",
    "50",
    "80%",
    "95%"
    ),
  Status = c(
    "86%",
    "83%",
    "47",
    "93.63%",
    "59.35%"
    ),
  short_name = c(
    "DOH Hospitals without PPE stockouts",
    "Designated laboratories without stockouts",
    "Facilities with isolation capacity",
    "HCWs with full dose of COVID-19 vaccine",
    "Administered project-financed vaccine"
    ),
  data_source = c(
    "Project data",
    "Project data",
    "Project data",
    "NVOC",
    "NVOC"
  )
  )

IRI <- list(
  `Strengthening Emergency COVID-19 Health Care Response` = 
    tibble(
      Indicators = c(
        "Standard design for hospital isolation and treatment centers to manage Severe Acute Respiratory Infections (SARI) patients is finalized  (Yes/No)",
        "No. of ventilators provided to hospitals (Number)",
        "Number of health staff trained in infection prevention and control (IPC) per DOH-approved protocols  (Number)",
        "Percentage of hospitals designated as vaccination sites in project areas having adequate and functioning cold chain equipment (CCE) maintaining the temperature required for the COVID-19 vaccine assigned (Percentage)",
        "Percentage of project-targeted vaccinated population and parents / guardians of individuals aged 12-17 who rated as satisfactory the COVID-19 vaccination service received (Percentage)",
        "Percentage of serious AEFI cases who have received treatment according to DOH's protocol, disaggregated by adults and individuals aged 12-17 (Percentage)",
        "National COVID-19 vaccination tools developed (Yes/No)- vaccination card/certificate - facility-based nominal registers and/or tally sheets, vaccination reports (paper and/or electronic) and analytical tools to monitor progress and coverage among different at-risk categories (Yes/No)",
        "Eligibility for vaccination criteria include barangay health workers (BHWs) among priority group (Yes/No)",
        "Number of vaccine doses procured by the project (Number)",
        "Percentage of project-targeted individuals aged 12-17 who received primary dose of vaccines as per the government plan and the Bank's VAC, disaggregated by sex (Percentage)",
        "Percentage of project-targeted vulnerable population that received additional / booster doses of COVID-19 vaccine as per the government plan, disaggregated by sex and age  (Percentage)",
        "Percentage of project-targeted health workers that received booster doses as per government plan, disaggregated by sex and age  (Percentage)",
        "Percentage of population willing to get vaccinated, disaggregated by sex  (Percentage)"
        ),
      `Target (2022)` = c(
        "Yes",
        "200",
        "15,000",
        "100%",
        "80%",
        "80%",
        "Yes",
        "Yes",
        "38,000,000",
        "60%",
        "70%",
        "70%",
        "70%"
        ),
      Status = c(
        "Yes",
        "500",
        "17,505",
        "100%",
        "98.6%",
        "67.2%",
        "Yes",
        "Yes",
        "33,021,580",
        "86.22%",
        "22.68%",
        "47.73%",
        "80%"
      ),
      short_name = c(
        "Final design for facilities to manage SARI",
        "Ventilators delivered to facilities",
        "IPC staff trained",
        "Vaccination sites with functioning CCE",
        "Vaccine satisfaction rating",
        "Serious AEFI cases received treatment",
        "National vaccination tools developed",
        "Barangay health workers in vaccination priority group",
        "Vaccine doses procured by the project",
        "Vaccinated pedia",
        "Vulnerable population with booster shot",
        "Health workers with booster shot",
        "Willingness to get booster shot"
      ),
      data_source = c(
        "Project data",
        "Project data",
        "DOH Academy eLearning",
        "NVOC",
        "Project survey data",
        "FDA Pharmacovigilance Team",
        "NVOC",
        "NVOC",
        "Project data",
        "NVOC",
        "NVOC",
        "NVOC",
        "SWS Survey"
      )
    ),
  `Strengthening Laboratory Capacity at National and Sub-National Level` = 
    tibble(
      Indicators = c(
        "Daily capacity of a designated national laboratory (RITM) in conducting COVID-19 diagnostic tests",
        "Daily capacity of a designated sub-national laboratory (Davao) in conducting COVID-19 diagnostic tests",
        "Daily capacity of a designated sub-national laboratory (Cebu) in conducting COVID-19 diagnostic tests"
      ),
      `Target (2022)` = c(
        "1200",
        "500",
        "500"
      ),
      Status = c(
        "49",
        "294",
        "431"
      ),
      short_name = c(
        "Daily average samples tested by RITM",
        "Daily average samples tested by SPMC",
        "Daily average samples tested by VSMMC"
      ),
      data_source = c(
        "DOH Epidemiology Bureau",
        "DOH Epidemiology Bureau",
        "DOH Epidemiology Bureau"
      )
    ),
  `Implementation Management and Monitoring and Evaluation` = 
    tibble(
      Indicators = c(
        "M&E system established to monitor project activities",
        "Functional asset management system is in place, independently reviewed on 6-monthly basis",
        "Percentage of grievances resolved to the satisfaction of the complainant within timeframe specified in the GRM for stakeholders"
        ),
      `Target (2022)` = c(
        "Yes",
        "Yes",
        "80%"
      ),
      Status = c(
        "Yes",
        "Yes",
        "100%"
        ),
      short_name = c(
        "M&E system established",
        "Functional asset management in place",
        "Grievances resolved"
      ),
      data_source = c(
        "Project data",
        "Project data",
        "Project data"
      )
    )
)






