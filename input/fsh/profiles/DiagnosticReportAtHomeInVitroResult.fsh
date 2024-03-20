Profile: DiagnosticReportAtHomeInVitroResult
Parent: USCoreDiagnosticReportProfileLaboratoryReporting
Id: DiagnosticReport-at-home-in-vitro-results
Title: "DiagnosticReport - At-Home In-Vitro Results"
Description: "This profile constrains the US Core Diagnostic Report for Laboratory Results profile to At-Home In-Vitro Tests."
* ^version = "1.0.0"
* id MS
* extension only ExtensionAtHomeInVitroTestSupportingInfo
* extension MS
* identifier MS
* status only code
* status = #final (exactly)
* code MS
* code ^short = "Consult LIVD: https://www.cdc.gov/csels/dls/livd-codes.html to obtain the values to be used for each particular use case."
* subject only Reference(PatientAtHomeInVitroTest)
* effective[x] only dateTime
* effective[x] MS
* result 1..1 MS
* result only Reference(ObservationAtHomeInVitroTestResult)
* result ^short = "Observation representing the result of the at-home in-vitro test."
* result ^definition = "Observation representing the result of the at-home in-vitro test."
* media ^short = "Images related to the test, such as a photo of the test result, images to support proctor interpretation of test results, etc."
* media ^definition = "Images related to the test, such as a photo of the test result, images to support proctor interpretation of test results, etc."