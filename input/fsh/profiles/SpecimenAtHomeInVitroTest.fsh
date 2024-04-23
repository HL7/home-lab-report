Profile: SpecimenAtHomeInVitroTest
Parent: USCoreSpecimenProfile
Id: Specimen-at-home-in-vitro-test
Title: "Specimen - At-Home In-Vitro Test"
Description: "This Specimen profile identifies and describes the specimen used in an At-Home In-Vitro Test."
* ^status = #active
* . ^short = "The specimen used in an at-home lab test."
* . ^definition = "The specimen used in an at-home lab test."
* identifier MS
* identifier ^short = "System-generated identifier for this Specimen."
* identifier ^definition = "System-generated identifier for this Specimen."
* subject 1..1
* subject ^short = "The subject is the person who took the at-home test."
* subject ^definition = "The subject is the person who took the at-home test."
* collection 1.. MS
* collection.collected[x] 1.. MS
* collection.collected[x] only dateTime