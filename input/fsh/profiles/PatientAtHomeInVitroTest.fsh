Profile: PatientAtHomeInVitroTest
Parent: USCorePatientProfile
Id: Patient-at-home-in-vitro-test
Title: "Patient - At Home In Vitro Test"
Description: "This Patient profile represents an At-Home In-Vitro Test Patient."
* ^version = "1.0.0"
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* identifier ^short = "Unique ID assigned to patient by App provider. Must be 100 characters or less."
* identifier.system ^short = "See 'Obtaining App Specific Identifiers'"
* name.family ^short = "If excluded or not available, use '~^^^^^^S'."
* name.given ^short = "If excluded or not available, do not populate."
* birthDate 1..1 MS
* address.district MS
* address.district ^short = "County"
* address.district from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.829 (extensible)
* address.postalCode 1..1 MS