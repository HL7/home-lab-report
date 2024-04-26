Instance: observation-patient-answer-symptom-onset-covid-p-noelle
InstanceOf: ObservationPatientQuestionAnswer
Title: "Observation - Patient Answer - Symptoms Onset COVID-19 P Noelle"
Description: "Observation - Patient Answer - Symptom Onset COVID-19 P Noelle Example"
Usage: #example
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[survey].text = "Survey"
* code = $loinc#65222-2 "Date and time of symptom onset"
* code.text = "Date and time of Covid 19 symptom onset"
* subject.reference = "Patient/patient-at-home-in-vitro-test-patricia-noelle"
* subject.display = "Patricia Noelle"
* effectiveDateTime = "2021-03-24"
* performer.reference = "Patient/patient-at-home-in-vitro-test-patricia-noelle"
* valueDateTime = "2021-03-22"