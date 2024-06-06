Profile: MessageHeaderAtHomeInVitroTestResults
Parent: MessageHeader
Id: MessageHeader-at-home-in-vitro-test-results
Title: "MessageHeader - At-Home In-Vitro Test Results"
Description: "This MessageHeader represents the At-Home In-Vitro Test Results being sent from an application server to a health authority."
* event[x] only Coding
* event[x] = $loinc#96552-5
* event[x] MS
* event[x] ^short = "Result of most recent lab test for condition of interest"
* destination MS
* destination.id MS
* destination.id ^short = "Receiving system OID. See 'Receiving System Specific Fields' (see Guidance->Getting Started for details). V2: MSH-5.2"
* destination.name MS
* destination.name ^short = "Receiving system namespace (name of destination application). See Receiving System Specific Fields (see Guidance->Getting Started for details). V2: MSH-5.1"
* destination.endpoint MS
* destination.receiver only Reference(USCoreOrganizationProfile)
* destination.receiver MS
* sender only Reference(USCoreOrganizationProfile)
* sender MS
* source MS
* source.id MS
* source.id ^short = "Sending system OID. See 'Obtaining App Specific Identifiers' (see Guidance->Getting Started for details). V2: MSH-3.2"
* source.extension MS
* source.extension ^slicing.discriminator.type = #value
* source.extension ^slicing.discriminator.path = "url"
* source.extension ^slicing.rules = #open
* source.extension ^min = 0
* source.extension contains ExtensionAtHomeInVitroTestSourceSoftwareInfo named sourceSoftwareVendorInfo 0..* MS
* source.extension[sourceSoftwareVendorInfo] ^short = "Source software information (vendor organization, binary id, install date)"
* source.extension[sourceSoftwareVendorInfo] ^min = 0
* source.name MS
* source.name ^short = "Sending system namespace (name of app). If converting FHIR to V2, must be less than 20 characters. V2: MSH-3.1"
* source.name ^min = 0
* source.software ^short = "Software product name including OS (e.g. Android, iOS). V2: SFT-3"
* source.version MS
* source.version ^short = "Software certified version or release number. V2: SFT-2"
* focus 1..1 MS
* focus only Reference(DiagnosticReportAtHomeInVitroResult)
* focus ^short = "The focus of this message header is a DiagnosticReport."