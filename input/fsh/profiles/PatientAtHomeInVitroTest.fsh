Profile: PatientAtHomeInVitroTest
Parent: USCorePatientProfile
Id: Patient-at-home-in-vitro-test
Title: "Patient - At Home In Vitro Test"
Description: "This Patient profile represents an At-Home In-Vitro Test Patient."
* ^version = "1.0.0"
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* extension contains
    ExtensionSexForClinicalUse named sexForClinicalUse 0..1 MS
* address.district MS
* address.district ^short = "County"