Instance: observation-patient-answer-hospitalized-s-trevor
InstanceOf: ObservationPatientQuestionAnswer
Title: "Observation - Patient Answer - Hospitalized - S Trevor"
Description: "Observation - Patient Answer - Hospitalized - S Trevor example"
Usage: #example
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[survey].text = "Survey"
* code = $loinc#77974-4 "Whether the patient was hospitalized for condition of interest"
* code.text = "Whether the patient was hospitalized for condition of interest"
* subject.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* subject.display = "Stacy Trevor"
* effectiveDateTime = "2021-01-28T16:06:03-05:00"
* performer.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* valueCodeableConcept = $v2-0532#N "No"