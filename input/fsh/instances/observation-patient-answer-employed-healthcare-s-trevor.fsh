Instance: observation-patient-answer-employed-healthcare-s-trevor
InstanceOf: ObservationPatientQuestionAnswer
Title: "Observation - Patient Answer - Employed in Healthcare - S Trevor"
Description: "Observation - Patient Answer - Employed in Healthcare - S Trevor example"
Usage: #example
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[survey].text = "Survey"
* code = $loinc#95418-0 "Whether patient is employed in a healthcare setting"
* code.text = "Whether patient is employed in a healthcare setting"
* subject.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* subject.display = "Stacy Trevor"
* effectiveDateTime = "2021-01-28T16:06:03-05:00"
* performer.reference = "Patient/patient-at-home-in-vitro-test-stacy-trevor"
* valueCodeableConcept = $v2-0532#N "No"