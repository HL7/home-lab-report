Instance: observation-patient-answer-symptoms-present-covid-p-noelle
InstanceOf: ObservationPatientQuestionAnswer
Title: "Observation - Patient Answer - Symptoms Present COVID-19 P Noelle"
Description: "Observation - Patient Answer - Symptoms Present COVID-19 P Noelle Example"
Usage: #example
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[survey].text = "Survey"
* code = $loinc#95419-8 "Whether the patient has symptoms related to condition of interest"
* code.text = "Whether the patient has symptoms related to condition of interest"
* subject.reference = "Patient/patient-at-home-in-vitro-test-patricia-noelle"
* subject.display = "Patricia Noelle"
* effectiveDateTime = "2021-03-24"
* performer.reference = "Patient/patient-at-home-in-vitro-test-patricia-noelle"
* valueCodeableConcept = $v2-0532#Y "Yes"