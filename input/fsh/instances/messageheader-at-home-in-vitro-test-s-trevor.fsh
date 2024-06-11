Instance: messageheader-at-home-in-vitro-test-s-trevor
InstanceOf: MessageHeaderAtHomeInVitroTestResults
Title: "MessageHeaderMessageHeader - At-Home In-Vitro Results - COVID-19 - S Trevor"
Description: "MessageHeaderMessageHeader - At-Home In-Vitro Results - COVID-19 - S Trevor example"
Usage: #example
* eventCoding = $loinc#96552-5

* destination
  * name = "AIMS.INTEGRATION.PRD"
  * receiver = Reference(us-core-organization-aphl-aims-prd)
  * endpoint = "urn:oid:2.16.840.1.114222.4.3.15.1"

* sender = Reference(us-core-organization-abbot)

* source
  * extension.extension[0].url = "vendorOrganization"
  * extension.extension[=].valueReference.reference = "Organization/us-core-organization-reliable-informatics"
  * extension.extension[+].url = "softwareBinaryID"
  * extension.extension[=].valueString = "Binary ID unknown"
  * extension.url = "http://hl7.org/fhir/us/home-lab-report/StructureDefinition/Extension-at-home-in-vitro-test-source-software-info"
  * name = "OneAbbottSol.STAG"
  * software = "ACMELIMS PH"
  * endpoint = "urn:oid:2.16.840.1.113883.3.8589.4.2.7.2"
* focus.reference = "DiagnosticReport/diagnosticreport-at-home-in-vitro-results-covid-s-trevor"