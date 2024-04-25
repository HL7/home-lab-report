Instance: patient-at-home-in-vitro-test-stacy-trevor
InstanceOf: PatientAtHomeInVitroTest
Title: "Patient - At-Home In-Vitro Test - Stacy Trevor"
Description: "Patient - At-Home In-Vitro Test - Stacy Trevor example"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2023-01-26T22:49:49.626+00:00"
* meta.source = "#m0lIVlIgfqsr1jaz"
* extension[race].extension[ombCategory].url = "ombCategory"
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2054-5 "Black or African American"
* extension[race].extension[text].url = "text"
* extension[race].extension[text].valueString = "Black or African American"
* extension[race].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[ethnicity].extension[ombCategory].url = "ombCategory"
* extension[ethnicity].extension[ombCategory].valueCoding = $v3-NullFlavor#UNK "Unknown"
* extension[ethnicity].extension[text].url = "text"
* extension[ethnicity].extension[text].valueString = "Unknown"
* extension[ethnicity].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://hospital.reliableorg.org"
* identifier.value = "P21-0000105078"
* active = true
* name.family = "Trevor"
* name.given = "Stacy"
* telecom.system = #phone
* telecom.value = "947-226-0356"
* telecom.use = #home
* gender = #female
* birthDate = "1988-01-21"
* address.line = "11 Norman Drive"
* address.city = "Palatine"
* address.district = "Cook"
* address.state = "IL"
* address.postalCode = "60067"
* address.country = "US"