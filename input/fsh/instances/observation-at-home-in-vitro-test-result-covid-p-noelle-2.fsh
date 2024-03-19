Instance: observation-at-home-in-vitro-test-result-covid-p-noelle-2
InstanceOf: ObservationAtHomeInVitroTestResultCovid
Title: "Observation - At-Home In-Vitro Test Result COVID-19 - P Noelle: Organization Proctor"
Description: "Observation - At-Home In-Vitro Test Result - Covid: P Noelle (proctored by an Organization) example"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-01-25T04:08:13.171+00:00"
* meta.source = "#y2c3DZ4Z6xoDcAB1"
* extension.extension[0].url = "proctoredTest"
* extension.extension[=].valueBoolean = true
* extension.extension[+].url = "proctoredBy"
* extension.extension[=].valueReference.reference = "Organization/us-core-organization-proctor"
* extension.url = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Extension-at-home-in-vitro-test-proctored-info"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#95209-3 "SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory system specimen by Rapid immunoassay"
* code.text = "SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory system specimen by Rapid immunoassay"
* subject.reference = "Patient/patient-at-home-in-vitro-test-patricia-noelle"
* subject.display = "Patricia Noelle"
* effectiveDateTime = "2020-03-10"
* valueCodeableConcept = $sct#260373001 "Detected"
* specimen.reference = "Specimen/specimen-anterior-nares-swab-p-noelle"
* specimen.display = "UR Specimen ID: MLD45-Z4-1234"
* device.reference = "Device/device-fast-sars-antigen-test"
* device.display = "UDI Device ID: 30014613339373"