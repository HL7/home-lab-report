Profile: SpecimenAtHomeInVitroTestCovid
Parent: SpecimenAtHomeInVitroTest
Id: Specimen-at-home-in-vitro-test-covid
Title: "Specimen - At-Home In-Vitro Test - COVID-19"
Description: "This Specimen profile identifies and describes the specimen used in a COVID-19 At-Home In-Vitro Test."
* . ^short = "The specimen used in a COVID-19 at-home lab test."
* . ^definition = "The specimen used in a COVID-19 at-home lab test."
* type 1.. MS
* type ^short = "Type of tissue or material (consult [LIVD](https://www.cdc.gov/csels/dls/livd-codes.html) to obtain the values to be used for each particular use case)"
* type ^definition = "Type of tissue or material (blood, etc.)."
* type.coding 1.. MS
* type.coding ^short = "The coded specimen type."
* type.coding ^definition = "The coded specimen type."