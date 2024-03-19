Profile: MessageHeaderAtHomeInVitroTestResults
Parent: MessageHeader
Id: MessageHeader-at-home-in-vitro-test-results
Title: "MessageHeader - At-Home In-Vitro Test Results"
Description: "This MessageHeader represents the At-Home In-Vitro Test Results being sent from an application server to a health authority."
* ^version = "1.0.0"
* ^status = #active
* . ^short = "Represents the At-Home In-Vitro Test Results being sent from an application server to a health authority."
* event[x] only Coding
* event[x] = $loinc#96552-5
* event[x] MS
* event[x] ^short = "Result of most recent lab test for condition of interest"
* destination MS
* destination.id MS
* destination.id ^short = "Receiving system OID"
* destination.name MS
* destination.name ^short = "Receiving system namespace (name of destination application)"
* destination.endpoint MS
* destination.receiver only Reference(USCoreOrganizationProfile)
* destination.receiver MS
* sender only Reference(USCoreOrganizationProfile)
* sender MS
* source MS
* source.id MS
* source.id ^short = "Sending system OID"
* source.extension MS
* source.extension ^slicing.discriminator.type = #value
* source.extension ^slicing.discriminator.path = "url"
* source.extension ^slicing.rules = #open
* source.extension ^min = 0
* source.extension contains ExtensionAtHomeInVitroTestSourceSoftwareInfo named sourceSoftwareVendorInfo 0..* MS
* source.extension[sourceSoftwareVendorInfo] ^short = "Source software information (vendor organization, binary id, intstall date)"
* source.extension[sourceSoftwareVendorInfo] ^definition = "Source software information (vendor organization, binary id, intstall date)"
* source.extension[sourceSoftwareVendorInfo] ^min = 0
* source.name MS
* source.name ^short = "Sending system namespace (name of app)"
* source.name ^min = 0
* source.software ^short = "Software product name including OS (e.g. Android, iOS)"
* source.version MS
* source.version ^short = "Software certified version or release number"
* focus 1..1 MS
* focus only Reference(DiagnosticReportAtHomeInVitroResult)
* focus ^short = "The focus of this message header is a DiagnosticReport."