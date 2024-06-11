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
* destination.name MS
* destination.name ^short = "Receiving system namespace (name of destination application). See 'Receiving System Specific Fields' (see Guidance->Getting Started for details). V2: MSH-5.1"
* destination.endpoint MS
* destination.endpoint ^short = "Receiving system OID. See 'Receiving System Specific Fields' (see Guidance->Getting Started for details). V2: MSH-5.2"
* destination.receiver only Reference(USCoreOrganizationProfile)
* destination.receiver MS
* destination.receiver ^short = "Organization.identifier.value & Organization.name: Receiving facility name; Organization.identifier.system: Receiving facility id; Organization.identifier.type: Receiving facility id type. See 'Receiving System Specific Fields' (see Guidance->Getting Started for details). V2: MSH-6.1, MSH-6.2, MSH-6.3"
* sender only Reference(USCoreOrganizationProfile)
* sender MS
* sender ^short = "Organization.name: Sending facility name; Organization.identifier[CLIA].value: Sending facility ID; Organization.identifier[CLIA].system (urn:oid:2.16.840.1.113883.4.7): Sending facility ID type. See 'Obtaining App Specific Identifiers' (see Guidance->Getting Started for details). V2: MSH-4.1, MSH-4.2, MSH-4.3"
* source MS
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
* source.endpoint MS
* source.endpoint ^short = "Sending system OID. See 'Obtaining App Specific Identifiers' (see Guidance->Getting Started for details). V2: MSH-3.2"
* source.software ^short = "Software product name including OS (e.g. Android, iOS). V2: SFT-3"
* source.version MS
* source.version ^short = "Software certified version or release number. V2: SFT-2"
* focus 1..1 MS
* focus only Reference(DiagnosticReportAtHomeInVitroResult)
* focus ^short = "The focus of this message header is a DiagnosticReport."