Instance: observation-at-home-in-vitro-test-result-covid-p-noelle
InstanceOf: ObservationAtHomeInVitroTestResultCovid
Title: "Observation - At-Home In-Vitro Test Result COVID-19 - P Noelle: Practitioner Proctor"
Description: "Observation - At-Home In-Vitro Test Result - Covid: P Noelle (proctored by a Practitioner) example"
Usage: #example
* meta.versionId = "8"
* meta.lastUpdated = "2023-01-25T04:01:01.565+00:00"
* meta.source = "#whPtTjKWaru0AgH7"
* extension[ExtensionAtHomeInVitroTestProctoredInfo].extension[proctoredTest].url = "proctoredTest"
* extension[ExtensionAtHomeInVitroTestProctoredInfo].extension[proctoredTest].valueBoolean = true
* extension[ExtensionAtHomeInVitroTestProctoredInfo].extension[proctoredBy].url = "proctoredBy"
* extension[ExtensionAtHomeInVitroTestProctoredInfo].extension[proctoredBy].valueReference.reference = "Practitioner/practitioner-us-core-proctor"
* extension.url = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Extension-at-home-in-vitro-test-proctored-info"
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* category[us-core].text = "Laboratory"
* code = $loinc#95209-3 "SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory system specimen by Rapid immunoassay"
* code.text = "SARS-CoV+SARS-CoV-2 (COVID-19) Ag [Presence] in Respiratory system specimen by Rapid immunoassay"
* subject.reference = "Patient/patient-at-home-in-vitro-test-patricia-noelle"
* subject.display = "Patricia Noelle"
* effectiveDateTime = "2020-03-10"
* performer.reference = "Patient/patient-at-home-in-vitro-test-patricia-noelle"
* valueCodeableConcept = $sct#260373001 "Detected"
* specimen.reference = "Specimen/specimen-anterior-nares-swab-p-noelle"
* specimen.display = "UR Specimen ID: MLD45-Z4-1234"
* device.reference = "Device/device-fast-sars-antigen-test"
* device.display = "UDI Device ID: 30014613339373"