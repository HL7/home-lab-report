Instance: practitioner-us-core-proctor
InstanceOf: USCorePractitionerProfile
Title: "Practitioner - US Core - Proctor"
Description: "US Core Practitioner: Test Proctor example"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339100"
* name.family = "Henry"
* name.given = "Seven"
* name.suffix = "M.D."
* telecom.system = #email
* telecom.value = "henry.seven@example.com"
* address.line[0] = "BMass Doctors"
* address.line[+] = "2100 North Ave"
* address.city = "Burlington"
* address.state = "MA"
* address.postalCode = "02368"
* address.country = "US"