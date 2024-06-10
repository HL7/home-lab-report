Mapping: hl7v2home1
Id: hl7v2home
Title: "HL7 V2 At-Home In-Vitro Test Report"
Source: MessageHeaderAtHomeInVitroTestResults
Target: "https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/HL7v2-implementation-guide"
* destination -> "MSH-5"
* destination.id -> "MSH-5.2"
* destination.name -> "MSH-5.1"
* destination.receiver -> "MSH-6" "Located in US Core Organization: Organization.identifier.value->MSH-6.1; Organization.identifier.system->MSH-6.2; Organization.identifier.type->MSH-6.3"
* sender -> "MSH-4" "Located in US Core Organization: Organization.name->MSH-4.1; Organization.identifier[CLIA].value->MSH-4.2; Organization.identifier[CLIA].system=urn:oid:2.16.840.1.113883.4.7->MSH-4.3"
* source -> "MSH-3"
* source.id -> "MSH-3.2"
* source.name -> "MSH-3.1"
* source.software -> "SFT-3"
* source.version -> "SFT-2"

Mapping: hl7v2home2
Id: hl7v2home
Title: "HL7 V2 At-Home In-Vitro Test Report"
Source: ExtensionAtHomeInVitroTestSourceSoftwareInfo
Target: "https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/HL7v2-implementation-guide"
* extension[vendorOrganization] -> "SFT-1"
* extension[softwareBinaryID] -> "SFT-4"
* extension[softwareInstallDate] -> "SFT-6"

Mapping: hl7v2home3
Id: hl7v2home
Title: "HL7 V2 At-Home In-Vitro Test Report"
Source: BundleAtHomeInVitroTest
Target: "https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/HL7v2-implementation-guide"
* timestamp -> "MSH-7"

Mapping: hl7v2home
Id: hl7v2home
Title: "HL7 V2 At-Home In-Vitro Test Report"
Source: DeviceAtHomeInVitroTest
Target: "https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/HL7v2-implementation-guide"
* udiCarrier.deviceIdentifier -> "OBX-17.1"

Mapping: hl7v2home4
Id: hl7v2home
Title: "HL7 V2 At-Home In-Vitro Test Report"
Source: ObservationAtHomeInVitroTestResult
Target: "https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/HL7v2-implementation-guide"
* status -> "OBR-25, OBX-11"
* code -> "OBX-3"
* effective[x] -> "OBX-7.1, OBX-19"
* issued -> "OBR-22.1"
* value[x] -> "OBX-5"

Mapping: hl7v2home5
Id: hl7v2home
Title: "HL7 V2 At-Home In-Vitro Test Report"
Source: ObservationPatientQuestionAnswer
Target: "https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/HL7v2-implementation-guide"
* code -> "OBX-3"
* value[x] -> "OBX-5"

Mapping: hl7v2home6
Id: hl7v2home
Title: "HL7 V2 At-Home In-Vitro Test Report"
Source: PatientAtHomeInVitroTest
Target: "https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/HL7v2-implementation-guide"
* extension[race] -> "PID-10"
* extension[ethnicity] -> "PID-22"
* identifier -> "PID-3.1"
* name -> "PID-5"
* telecom -> "PID-13"
* gender -> "PID-8"
* birthDate -> "PID-7"
* address -> "PID-11"

Mapping: hl7v2home7
Id: hl7v2home
Title: "HL7 V2 At-Home In-Vitro Test Report"
Source: SpecimenAtHomeInVitroTest
Target: "https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/HL7v2-implementation-guide"
* identifier -> "SPM-2.2"
* type -> "SPM-4"
* collection.collected[x] -> "SPM-17.1"