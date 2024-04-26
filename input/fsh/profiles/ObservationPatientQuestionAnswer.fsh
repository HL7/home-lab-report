Profile: ObservationPatientQuestionAnswer
Parent: USCoreObservationScreeningAssessmentProfile
Id: Observation-patient-question-answer
Title: "Observation - Patient Question Answer"
Description: "This profile constrains the FHIR Observation Resource to represent an answer given to a question asked of the patient by the app when recording or uploading their test results."
* code from AtHomeInVitroPatientQuestions (extensible)
* code ^short = "Questions asked of the patient by the app when recording or uploading their at-home in-vitro test results. V2: OBX-3.1, OBX-3.2, OBX-3.3, OBX-3.7"
* code ^binding.description = "Clinical Focus: This set of values contains concepts representing questions asked of the patient by the app when recording or uploading their at-home in-vitro test results."
* value[x] 1..
* value[x] ^short = "Answer given to a question asked of the patient by the app when recording or uploading their test results. V2: OBX-5"