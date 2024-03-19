Extension: ExtensionAtHomeInVitroTestSupportingInfo
Id: Extension-at-home-in-vitro-test-supporting-info
Title: "Extension - At-Home In-Vitro Test Supporting Info"
Description: "Additional information supporting the diagnostic report. Modeled after the DiagnosticReport.supportingInfo backbone element added to DiagnosticReport in FHIR R5."
Context: DiagnosticReport
* ^version = "1.0.0"
* ^date = "2023-01-04"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . 0..*
* . ^short = "Extension - At-Home In-Vitro Test Supporting Information"
* . ^definition = "Additional information supporting the diagnostic report."
* extension contains
    type 1..1 MS and
    reference 0..* MS
* extension[type] only Extension
* extension[type] ^short = "Supporting information role code"
* extension[type] ^definition = "The code value for the role of the supporting information in the diagnostic report."
* extension[type].url 1..1 MS
* extension[type].url only uri
* extension[type].value[x] 1..1 MS
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] = $v2-0936#QST
* extension[type].value[x] ^short = "Question"
* extension[reference] only Extension
* extension[reference] ^short = "Supporting information reference"
* extension[reference] ^definition = "The reference for the supporting information in the diagnostic report."
* extension[reference].url 1..1 MS
* extension[reference].url only uri
* extension[reference].value[x] 1..1 MS
* extension[reference].value[x] only Reference(ObservationPatientQuestionAnswer)
* url 1..1