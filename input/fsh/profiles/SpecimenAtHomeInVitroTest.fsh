Profile: SpecimenAtHomeInVitroTest
Parent: USCoreSpecimenProfile
Id: Specimen-at-home-in-vitro-test
Title: "Specimen - At-Home In-Vitro Test"
Description: "This Specimen profile identifies and describes the specimen used in an At-Home In-Vitro Test."
* identifier MS
* identifier ^short = "At-Home Test Specimen identifier."
* identifier.type ^short = "At-Home Test Specimen ID assigner ID type. 'ISO' V2: SPM-2.2.4"
* identifier.system ^short = "At-Home Specimen ID assigner ID type . See 'Obtaining App Specific Identifiers' (see Guidance->Getting Started for details). If converting FHIR to V2, must be 100 characters or less. V2: SPM-2.2.3"
* identifier.value ^short = "At-Home Test Specimen identifier. {Unique ID assigned to every test by app manufacturer} If converting FHIR to V2, must be 100 characters or less. V2: SPM-2.2.1"
* type ^short = "At-Home Test Specimen type of tissue or material. Consult [LIVD](https://www.cdc.gov/csels/dls/livd-codes.html) to obtain the values to be used for each particular use case. V2: SPM-4.1, SPM-4.2, SPM-4.3, SPM-4.7"
* subject 1..1
* subject ^short = "The subject is the person who took the at-home test."
* collection 1.. MS
* collection.collected[x] 1.. MS
* collection.collected[x] only dateTime
* collection.collected[x] ^short = "At-Home Test Specimen collected date. V2: SPM-17.1"