Profile: BundleAtHomeInVitroTest
Parent: Bundle
Id: Bundle-at-home-in-vitro-test
Title: "Bundle - At-Home In-Vitro Test"
Description: "This profile constrains the Bundle resource for At-Home In-Vitro Tests."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2022-04-01"
* ^jurisdiction = urn:iso:std:iso:3166#US
* identifier 1.. MS
* type = #message (exactly)
* type MS
* timestamp 1..1 MS
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "$this.resource"
* entry ^slicing.rules = #open
* entry contains messageHeader 1..1 MS
* entry[messageHeader].resource 1.. MS
* entry[messageHeader].resource only MessageHeaderAtHomeInVitroTestResults
* entry[messageHeader].resource ^short = "MessageHeader - At-Home In-Vitro Test Results"