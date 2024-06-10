Instance: messageheader-at-home-in-vitro-test-s-trevor
InstanceOf: MessageHeaderAtHomeInVitroTestResults
Title: "MessageHeaderMessageHeader - At-Home In-Vitro Results - COVID-19 - S Trevor"
Description: "MessageHeaderMessageHeader - At-Home In-Vitro Results - COVID-19 - S Trevor example"
Usage: #example
* eventCoding = $loinc#96552-5

* destination
  * id = "2.16.840.1.114222.4.3.15.2"
  * name = "AIMS.INTEGRATION.STG"
  * receiver = Reference(us-core-organization-aphl-aims-prd)
  * endpoint = "http://at-home-in-vitro-test.org/fhir/destinationendpoint/1"

* sender = Reference(us-core-organization-abbot)

* source.id = "2.16.840.1.113883.3.8589.4.2.7.2"
* source.extension.extension[0].url = "vendorOrganization"
* source.extension.extension[=].valueReference.reference = "Organization/us-core-organization-reliable-informatics"
* source.extension.extension[+].url = "softwareBinaryID"
* source.extension.extension[=].valueString = "Binary ID unknown"
* source.extension.url = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Extension-at-home-in-vitro-test-source-software-info"
* source.name = "OneAbbottSol.STAG"
* source.software = "ACMELIMS PH"
* source.endpoint = "http://at-home-in-vitro-test.org/fhir/sourceendpoint/1"
* focus.reference = "DiagnosticReport/diagnosticreport-at-home-in-vitro-results-covid-s-trevor"