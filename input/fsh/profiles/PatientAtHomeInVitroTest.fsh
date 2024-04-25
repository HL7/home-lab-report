Profile: PatientAtHomeInVitroTest
Parent: USCorePatientProfile
Id: Patient-at-home-in-vitro-test
Title: "Patient - At Home In Vitro Test"
Description: "This Patient profile represents an At-Home In-Vitro Test Patient."
* ^version = "1.0.0"
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* extension[race] ^short = "US Core Race Extension. V2: PID-10.1, PID-10.2, PID-10.3, PID-10.7"
* extension[ethnicity] ^short = "US Core Ethnicity Extension. V2: PID-22.1, PID-22-2, PID-22.3, PID-22.7"
* identifier ^short = "An identifier for this patient: the value that is unique within the system. Unique ID assigned to patient by App provider. Must be 100 characters or less. V2: PID-3.1"
* identifier.system ^short = "See 'Obtaining App Specific Identifiers'"
* name.family ^short = "Family name (often called 'Surname'). If excluded or not available, use '~^^^^^^S'. V2: PID-5.1"
* name.given ^short = "Given names (not always 'first'). Includes middle names. If excluded or not available, do not populate. V2: PID-5.2, PID-5.3"
* telecom ^short = "A contact detail for the individual V2: PID-13.3, PID-13.4, PID-13.6, PID-13.7"
* gender ^short = "Asserted by the At-Home Test patient. male | female | other | unknown V2: PID-8"
* birthDate 1..1 MS
* birthDate ^short = "The date of birth for the individual. V2: PID-7"
* address.line ^short = "Street name, number, direction & P.O. Box etc. V2: PID-11.1, PID-11-2"
* address.city ^short = "Name of city, town etc. V2: PID-11.3"
* address.district MS
* address.district ^short = "Patient County. V2: PID-11.9"
* address.district from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.829 (extensible)
* address.state ^short = "Sub-unit of country (abbreviations ok). V2: PID-11.4"
* address.postalCode 1..1 MS
* address.postalCode ^short = "US Zip Codes. V2: PID-11.5"