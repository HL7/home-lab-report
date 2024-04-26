Instance: MessageDefinition-at-home-in-vitro-test-results
InstanceOf: MessageDefinition
Title: "MessageDefinition - At-Home In-Vitro Test Results"
Description: "MessageDefinition - At-Home In-Vitro Test Results"
Usage: #example
* url = "http://hl7.org/fhir/us/home-lab-report/MessageDefinition/MessageDefinition-at-home-in-vitro-test-results"
* name = "MessageDefinitionAtHomeInVitroTestResults"
* title = "MessageDefinition - At-Home In-Vitro Test Results"
* status = #active
* experimental = false
* date = "2023-01-07"
* eventCoding = $loinc#96552-5
* focus.code = #Bundle
* focus.profile = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Bundle-at-home-in-vitro-test"
* focus.min = 1
* focus.max = "1"