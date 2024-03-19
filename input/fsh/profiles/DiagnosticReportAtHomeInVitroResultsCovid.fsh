Profile: DiagnosticReportAtHomeInVitroResultsCovid
Parent: DiagnosticReportAtHomeInVitroResult
Id: DiagnosticReport-at-home-in-vitro-results-covid
Title: "DiagnosticReport - At-Home In-Vitro Results - COVID-19"
Description: "This profile further constrains the DiagnosticReport - At-Home In-Vitro Results profile to COVID-19 At-Home In-Vitro Tests."
* code MS
* code ^short = "Consult LIVD: https://www.cdc.gov/csels/dls/livd-codes.html to obtain the values to be used for each particular use case."
* result 1..1 MS
* result only Reference(ObservationAtHomeInVitroTestResult)