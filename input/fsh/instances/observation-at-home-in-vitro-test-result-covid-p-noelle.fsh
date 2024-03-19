Instance: observation-at-home-in-vitro-test-result-covid-p-noelle
InstanceOf: ObservationAtHomeInVitroTestResultCovid
Title: "Observation - At-Home In-Vitro Test Result COVID-19 - P Noelle: Practitioner Proctor"
Description: "Observation - At-Home In-Vitro Test Result - Covid: P Noelle (proctored by a Practitioner) example"
Usage: #example
* meta.versionId = "8"
* meta.lastUpdated = "2023-01-25T04:01:01.565+00:00"
* meta.source = "#whPtTjKWaru0AgH7"
* extension.extension[0].url = "proctoredTest"
* extension.extension[=].valueBoolean = true
* extension.extension[+].url = "proctorInformation"
* extension.extension[=].valueReference.reference = "Practitioner/practitioner-us-core-proctor"
* extension.url = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Extension-at-home-in-vitro-test-proctored-info"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#95209-3 "SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory specimen by Rapid immunoassay"
* code.text = "SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory specimen by Rapid immunoassay"
* subject.reference = "Patient/patient-at-home-in-vitro-test-patricia-noelle"
* subject.display = "Patricia Noelle"
* effectiveDateTime = "2020-03-10"
* valueCodeableConcept = $sct#260373001 "Detected"
* specimen.reference = "Specimen/specimen-anterior-nares-swab-p-noelle"
* specimen.display = "UR Specimen ID: MLD45-Z4-1234"
* device.reference = "Device/device-fast-sars-antigen-test"
* device.display = "UDI Device ID: 30014613339373"