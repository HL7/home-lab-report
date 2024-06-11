Instance: messageheader-at-home-in-vitro-test-p-noelle
InstanceOf: MessageHeaderAtHomeInVitroTestResults
Title: "MessageHeader - At-Home In-Vitro Results - COVID-19 - P Noelle"
Description: "MessageHeader - At-Home In-Vitro Results - COVID-19 - P Noelle Example"
Usage: #example
* eventCoding = $loinc#96552-5

* destination
  * name = "AIMS.INTEGRATION.PRD"
  * receiver = Reference(us-core-organization-aphl-aims-prd)
  * endpoint = "urn:oid:2.16.840.1.114222.4.3.15.1"

* sender = Reference(us-core-organization-acme-corporation)

* source
  * extension.extension[0].url = "vendorOrganization"
  * extension.extension[=].valueReference.reference = "Organization/us-core-organization-acme-corporation"
  * extension.extension[+].url = "softwareBinaryID"
  * extension.extension[=].valueString = "Binary ID unknown"
  * extension.extension[+].url = "softwareInstallDate"
  * extension.extension[=].valueDate = "2022-06-01"
  * extension.url = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Extension-at-home-in-vitro-test-source-software-info"
  * name = "ACME Application Server"
  * software = "ACME Application Software"
  * version = "1.2.3.4.5"
  * contact.system = #phone
  * contact.value = "+1 (555) 987 6543"
  * endpoint = "http://at-home-in-vitro-test.org/fhir/endpoint/1"
* focus.reference = "DiagnosticReport/diagnosticreport-at-home-in-vitro-results-covid-p-noelle"