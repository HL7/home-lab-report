Profile: ObservationPatientQuestionAnswer
Parent: USCoreObservationSurveyProfile
Id: Observation-patient-question-answer
Title: "Observation - Patient Question Answer"
Description: "This profile constrains the FHIR Observation Resource to represent an answer given to a question asked of the patient by the app when recording or uploading their test results."
* ^version = "1.0.0"
* code from AtHomeInVitroPatientQuestions (extensible)
* code ^short = "Questions asked of the patient by the app when recording or uploading their at-home in-vitro test results."
* code ^binding.description = "Clinical Focus Clinical FocusThis set of values contains concepts representing questions asked of the patient by the app when recording or uploading their at-home in-vitro test results."
* value[x] 1..
* value[x] ^short = "Answer given to a question asked of the patient by the app when recording or uploading their test results."