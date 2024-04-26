Instance: messageheader-at-home-in-vitro-test-p-noelle
InstanceOf: MessageHeaderAtHomeInVitroTestResults
Title: "MessageHeader - At-Home In-Vitro Results - COVID-19 - P Noelle"
Description: "MessageHeader - At-Home In-Vitro Results - COVID-19 - P Noelle Example"
Usage: #example
* eventCoding = $loinc#96552-5
* source.extension.extension[0].url = "vendorOrganization"
* source.extension.extension[=].valueReference.reference = "Organization/us-core-organization-acme-corporation"
* source.extension.extension[+].url = "softwareBinaryID"
* source.extension.extension[=].valueString = "Binary ID unknown"
* source.extension.extension[+].url = "softwareInstallDate"
* source.extension.extension[=].valueDate = "2022-06-01"
* source.extension.url = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Extension-at-home-in-vitro-test-source-software-info"
* source.name = "ACME Application Server"
* source.software = "ACME Application Software"
* source.version = "1.2.3.4.5"
* source.contact.system = #phone
* source.contact.value = "+1 (555) 987 6543"
* source.endpoint = "http://at-home-in-vitro-test.org/fhir/endpoint/1"
* focus.reference = "DiagnosticReport/diagnosticreport-at-home-in-vitro-results-covid-p-noelle"