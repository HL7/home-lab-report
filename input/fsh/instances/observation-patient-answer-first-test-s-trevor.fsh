Instance: observation-patient-answer-first-test-s-trevor
InstanceOf: ObservationPatientQuestionAnswer
Title: "Observation - Patient Answer - First Test for Condition - S Trevor"
Description: "Observation - Patient Answer - First Test for Condition - S Trevor example"
Usage: #example
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[survey].text = "Survey"
* code = $loinc#95417-2 "Whether this is the patient's first test for condition of interest"
* code.text = "Whether this is the patient's first test for condition of interest"
* subject.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* subject.display = "Stacy Trevor"
* effectiveDateTime = "2021-01-28T16:06:03-05:00"
* performer.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* valueCodeableConcept = $v2-0532#N "No"