Profile: ObservationAtHomeInVitroTestResult
Parent: USCoreLaboratoryResultObservationProfile
Id: Observation-at-home-in-vitro-test-result
Title: "Observation - At-Home In-Vitro Test Result"
Description: "This profile constrains the US Core Laboratory Result Observation to At-Home In-Vitro Sample Tests."
* ^version = "1.0.0"
* id 1.. MS
* extension only ExtensionAtHomeInVitroTestProctoredInfo
* status = #final (exactly)
* status ^short = "At-Home Test result status final. V2: OBR-25, OBX-11"
* code ^short = "At-Home Test performed code. Consult LIVD: https://www.cdc.gov/csels/dls/livd-codes.html to obtain the values to be used for each particular use case. V2: OBX-3.1, OBX-3.2, OBX-3.3, OBX-3.7"
* subject only Reference(PatientAtHomeInVitroTest)
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "At-Home Test date of interpretation/result date. The effectiveTime SHALL be precise to at least the minute and SHALL include a time zone offset. NOTE: For multiplex tests, this field must match across all results. V2: OBX-7.1, OBX-19"
* issued MS
* issued ^short = "At-Home Test result date released - when test item is done (in the at-home setting will mostly be the same as the Observation.effective[x], could be different when a proctor is involved - when the proctor releases the result). V2: OBR-22.1"
* performer MS
* performer only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile or USCoreOrganizationProfile or USCoreCareTeam or PatientAtHomeInVitroTest or USCoreRelatedPersonProfile)
* performer ^short = "If the performer is not the patient being tested, specify the person performing the test."
* value[x] only CodeableConcept
* value[x] MS
* value[x] ^short = "At-Home Test Result value. Consult LIVD: https://www.cdc.gov/csels/dls/livd-codes.html to obtain the values to be used for each particular use case. V2: OBX-5.1, OBX-5.2, OBX-5.3, OBX-5.7"
* specimen 1.. MS
* specimen only Reference(SpecimenAtHomeInVitroTest)
* specimen ^short = "The Specimen SHALL be from at-home sample. The referenced specifimen should contain a Specimen.identifier and a Specimen.identifier.assigner."
* device 1.. MS
* device only Reference(DeviceAtHomeInVitroTest)
* device ^label = "At home test device"
* device ^short = "The referenced device SHALL be at-home test device."
* device ^definition = "The referenced device is an at-home test device, The referenced device **SHALL** contain a Device.udiCarrier.deviceIdentifier. Please see GUDID data base: https://accessgudid.nlm.nih.gov/help/search/basic-search to find the device's UDI"
* hasMember only Reference(ObservationAtHomeInVitroTestResult)
* hasMember ^short = "Multiplex Assay tests that serve as a single test to diagnose infection caused by multiple viruses (e.g. CDC Flu SC2 Multiplex Assay for SARS-CoV-2, influenza A, and/or influenza B viruses) should be recorded using multiple Observation.hasMember elements."