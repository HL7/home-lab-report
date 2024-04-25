Extension: ExtensionAtHomeInVitroTestSourceSoftwareInfo
Id: Extension-at-home-in-vitro-test-source-software-info
Title: "Extension - At-Home In-Vitro Test Source Software Information"
Description: "Information about the source software. The source software is the message producing app that changes the format of, or produces the data."
Context: MessageHeader.source
* ^version = "1.0.0"
* ^date = "2022-06-21"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . 0..1
* . ^short = "Extension - At-Home In-Vitro Test Source Software Information"
* . ^definition = "Information about the source software."
* extension contains
    vendorOrganization 0..1 MS and
    softwareBinaryID 0..1 MS and
    softwareInstallDate 0..1 MS
* extension[vendorOrganization] only Extension
* extension[vendorOrganization] ^short = "Source software vendor organization. V2: SFT-1"
* extension[vendorOrganization] ^definition = "Source software vendor organization. V2: SFT-1"
* extension[vendorOrganization].url 1..1
* extension[vendorOrganization].value[x] 1..1 MS
* extension[vendorOrganization].value[x] only Reference(USCoreOrganizationProfile)
* extension[softwareBinaryID] only Extension
* extension[softwareBinaryID] ^short = "Source software binary ID. V2: SFT-4"
* extension[softwareBinaryID] ^definition = "Source software binary ID. V2: SFT-4"
* extension[softwareBinaryID].url 1..1
* extension[softwareBinaryID].value[x] 1..1 MS
* extension[softwareBinaryID].value[x] only string
* extension[softwareInstallDate] only Extension
* extension[softwareInstallDate] ^short = "Source software install date. V2: SFT-6"
* extension[softwareInstallDate] ^definition = "Source software install date. V2: SFT-6"
* extension[softwareInstallDate].url 1..1
* extension[softwareInstallDate].value[x] 1..1 MS
* extension[softwareInstallDate].value[x] only date
* url 1..1