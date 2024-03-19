Profile: ObservationAtHomeInVitroTestResultCovid
Parent: ObservationAtHomeInVitroTestResult
Id: Observation-at-home-in-vitro-test-result-covid
Title: "Observation - At-Home In-Vitro Test Result - COVID-19"
Description: "This profile constrains the Observation - At-Home In-Vitro Test Result profile to COVID-19 At-Home In-Vitro Tests."
* code ^short = "Consult LIVD: https://www.cdc.gov/csels/dls/livd-codes.html to obtain the values to be used for each particular use case."
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] ^short = "Consult LIVD: https://www.cdc.gov/csels/dls/livd-codes.html to obtain the values to be used for each particular use case."
* specimen 1.. MS
//* specimen only Reference(SpecimenAtHomeInVitroTestCovid)
* specimen ^short = "The Specimen SHALL be from at-home COVID-19 sample."
* specimen ^definition = "The referenced specimen should contain a Specimen.identifier and a Specimen.identifier.assigner"
* device 1.. MS
* device only Reference(DeviceAtHomeInVitroTest)
* device ^short = "The referenced device is an at-home COVID-19 test device."
* device ^definition = "The referenced device is an at-home COVID-19 test device, and should contain a Device.udiCarrier.deviceIdentifier. Please see GUDID data base: https://accessgudid.nlm.nih.gov/help/search/basic-search to find the device's UDI."