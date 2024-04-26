Instance: observation-patient-answer-symptoms-present-covid-s-trevor
InstanceOf: ObservationPatientQuestionAnswer
Title: "Observation - Patient Answer - Symptoms Present - S Trevor"
Description: "Observation - Patient Answer - Symptoms Present - S Trevor example"
Usage: #example
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[survey].text = "Survey"
* code = $loinc#95419-8 "Whether the patient has symptoms related to condition of interest"
* code.text = "Whether the patient has symptoms related to condition of interest"
* subject.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* subject.display = "Stacy Trevor"
* effectiveDateTime = "2021-01-28T16:06:03-05:00"
* performer.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* valueCodeableConcept = $v2-0532#Y "Yes"