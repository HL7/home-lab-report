Profile: SpecimenAtHomeInVitroTest
Parent: Specimen
Id: Specimen-at-home-in-vitro-test
Title: "Specimen - At-Home In-Vitro Test"
Description: "This Specimen profile identifies and describes the specimen used in an At-Home In-Vitro Test."
* ^status = #active
* . ^short = "The specimen used in an at-home lab test."
* . ^definition = "The specimen used in an at-home lab test."
* identifier MS
* identifier ^short = "System-generated identifier for this Specimen."
* identifier ^definition = "System-generated identifier for this Specimen."
* type 1.. MS
* type ^short = "Type of tissue or material"
* type ^definition = "Type of tissue or material (blood, etc.)."
* type.coding 1..1 MS
* type.coding ^short = "The coded specimen type."
* type.coding ^definition = "The coded specimen type."
* type.coding.system 1.. MS
* type.coding.code 1.. MS
* type.text MS
* type.text ^short = "The specimen text description."
* type.text ^definition = "The specimen text description."
* subject 1..1 MS
* subject only Reference(USCorePatientProfile)
* subject ^short = "The subject is the person who took the at-home test."
* subject ^definition = "The subject is the person who took the at-home test."
* collection 1.. MS
* collection.collected[x] 1.. MS
* collection.collected[x] only dateTime