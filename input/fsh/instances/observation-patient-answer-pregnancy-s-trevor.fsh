Instance: observation-patient-answer-pregnancy-s-trevor
InstanceOf: ObservationPatientQuestionAnswer
Title: "Observation - Patient Answer - Pregnancy - S Trevor"
Description: "Observation - Patient Answer - Pregnancy - S Trevor example"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-01-26T22:14:40.518+00:00"
* meta.source = "#YCOTptFf2QBL6SPy"
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[survey].text = "Survey"
* code = $loinc#82810-3 "Pregnancy status"
* code.text = "Pregnancy status"
* subject.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* subject.display = "Stacy Trevor"
* effectiveDateTime = "2021-01-28T16:06:03-05:00"
* performer.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* valueCodeableConcept = $sct#60001007 "Not pregnant (finding)"