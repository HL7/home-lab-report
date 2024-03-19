Profile: ObservationAtHomeInVitroTestResult
Parent: USCoreLaboratoryResultObservationProfile
Id: Observation-at-home-in-vitro-test-result
Title: "Observation - At-Home In-Vitro Test Result"
Description: "This profile constrains the US Core Laboratory Result Observation to At-Home In-Vitro Sample Tests."
* ^version = "1.0.0"
* id 1.. MS
* extension only ExtensionAtHomeInVitroTestProctoredInfo
* status = #final (exactly)
* code ^short = "Consult LIVD: https://www.cdc.gov/csels/dls/livd-codes.html to obtain the values to be used for each particular use case."
* subject only Reference(PatientAtHomeInVitroTest)
* effective[x] 1.. MS
* effective[x] only dateTime
* issued MS
* issued ^short = "Test result date released"
* issued ^definition = "Test result date released: This should be populated with the test result date released, which, in the at-home setting, will mostly be the same as the Observation.effective[x], however, it could be different when a proctor is involved and releases the result. It is mapped to HL7 V2 OBR 22 because it is the required field in the message."
* performer MS
* performer ^short = "If the performer is not the patient being tested, specify the person performing the test."
* value[x] only CodeableConcept
* value[x] MS
* value[x] ^label = "At-Home Test Result Value"
* value[x] ^short = "At-Home Test Result Value"
* value[x] ^min = 0
* specimen 1.. MS
//* specimen only Reference(SpecimenAtHomeInVitroTest)
* specimen ^short = "The Specimen SHALL be from at-home sample."
* specimen ^definition = "The referenced specifimen should contain a Specimen.identifier and a Specimen.identifier.assigner"
* specimen ^comment = "The referenced specifimen should contain a Specimen.identifier and a Specimen.identifier.assigner"
* device 1.. MS
* device only Reference(DeviceAtHomeInVitroTest)
* device ^label = "At home test device"
* device ^short = "The referenced device SHALL be at-home test device."
* device ^definition = "The referenced device is an at-home test device, The referenced device **SHALL** contain a Device.udiCarrier.deviceIdentifier. Please see GUDID data base: https://accessgudid.nlm.nih.gov/help/search/basic-search to find the device's UDI"
* hasMember only Reference(ObservationAtHomeInVitroTestResult)
* hasMember ^short = "Multiplex Assay tests that serve as a single test to diagnose infection caused by multiple viruses (e.g. CDC Flu SC2 Multiplex Assay for SARS-CoV-2, influenza A, and/or influenza B viruses) should be recorded using multiple Observation.hasMember elements."