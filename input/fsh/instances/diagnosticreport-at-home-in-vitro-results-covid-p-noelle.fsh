Instance: diagnosticreport-at-home-in-vitro-results-covid-p-noelle
InstanceOf: DiagnosticReportAtHomeInVitroResultsCovid
Title: "DiagnosticReport - At-Home In-Vitro Results - COVID-19 - P Noelle"
Description: "DiagnosticReport - At-Home In-Vitro Results - Covid: P Noelle example"
Usage: #example
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[type].url = "type"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[type].valueCodeableConcept = $v2-0936#QST "Question"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[reference].url = "reference"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[reference].valueReference.reference = "Observation/observation-patient-answer-symptoms-present-covid-p-noelle"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[reference].valueReference.display = "Whether the patient has symptoms related to condition of interest: Yes"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].url = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Extension-at-home-in-vitro-test-supporting-info"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[type].url = "type"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[type].valueCodeableConcept = $v2-0936#QST "Question"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[reference].url = "reference"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[reference].valueReference.reference = "Observation/observation-patient-answer-symptom-onset-covid-p-noelle"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].extension[reference].valueReference.display = "Date and time of symptom onset: March 22, 2021"
* extension[ExtensionAtHomeInVitroTestSupportingInfo].url = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Extension-at-home-in-vitro-test-supporting-info"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB "Laboratory"
* code = $loinc#95209-3 "SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory system specimen by Rapid immunoassay"
* subject.reference = "Patient/patient-at-home-in-vitro-test-patricia-noelle"
* subject.display = "Patricia Noelle"
* effectiveDateTime = "2021-03-10T11:45:33+11:00"
* issued = "2021-03-10T11:45:33+11:00"
* result.reference = "Observation/observation-at-home-in-vitro-test-result-covid-p-noelle"
* result.display = "SARS-CoV+SARS-CoV-2"