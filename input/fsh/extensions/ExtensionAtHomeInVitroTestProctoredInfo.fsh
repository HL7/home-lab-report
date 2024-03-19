Extension: ExtensionAtHomeInVitroTestProctoredInfo
Id: Extension-at-home-in-vitro-test-proctored-info
Title: "Extension - At-Home In-Vitro Test Proctored Info"
Description: "Information about whether or not the test was proctored and who the proctor was."
Context: Observation
* ^version = "1.0.0"
* ^date = "2022-06-21"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . 0..1
* . ^short = "Extension - At-Home In-Vitro Test Proctored Information"
* . ^definition = "Information about whether or not the test was proctored and who the proctor was."
* extension contains
    proctoredTest 1..1 MS and
    proctoredBy 0..* MS
* extension[proctoredTest] only Extension
* extension[proctoredTest] ^short = "Whether or not the at-home in-vitro test was proctored"
* extension[proctoredTest] ^definition = "Whether or not the at-home in-vitro test was proctored"
* extension[proctoredTest].url 1..1 MS
* extension[proctoredTest].url only uri
* extension[proctoredTest].value[x] 1..1 MS
* extension[proctoredTest].value[x] only boolean
* extension[proctoredBy] only Extension
* extension[proctoredBy] ^short = "Information about the person(s) who proctored the test"
* extension[proctoredBy] ^definition = "Information about the person(s) who proctored the test"
* extension[proctoredBy].url 1..1 MS
* extension[proctoredBy].url only uri
* extension[proctoredBy].value[x] 1..1 MS
* extension[proctoredBy].value[x] only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile or USCoreRelatedPersonProfile or USCoreOrganizationProfile)
* url 1..1