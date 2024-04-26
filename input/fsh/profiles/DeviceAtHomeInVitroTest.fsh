Profile: DeviceAtHomeInVitroTest
Parent: Device
Id: Device-at-home-in-vitro-test
Title: "Device - At-Home In-Vitro Test"
Description: "This profile constrains the Device resource for At-Home In-Vitro Tests."
* udiCarrier ..1 MS
* udiCarrier.deviceIdentifier 1..1 MS
* udiCarrier.deviceIdentifier ^short = "LIVD Spreadsheet | LOINC Mapping.Testkit Name ID or LIVD Spreadsheet | LOINC Mapping.Testkit Equipment UID V2: OBX-17.1"
* udiCarrier.deviceIdentifier ^definition = "At-Home Test Device identifier. Although most at home test kits will have a single UDI for the \"test kit\" (all in one package of reagents, test card/device, etc.) it is possible for at home kits have a resuable \"reader device\" which would need a distinct \"equipment id\". In this case, the reader device would have an \"equipment UID\" that may be the same for multiple tests performed. For these cases record Equipment UID here, otherwise record Test Kit Name ID here. V2: OBX-17.1"
* udiCarrier.issuer 0..1 MS
* udiCarrier.issuer ^short = "Organization that issues the UDI for this test. Not included in V2 IG."
* manufacturer 0..1 MS
* manufacturer ^short = "LIVD Spreadsheet | LOINC Mapping.Manufacturer"
* manufactureDate MS
* expirationDate 0..1 MS
* expirationDate ^short = "Expiration date of the test kit. Not included in V2 IG."
* expirationDate ^short = "Expiration date of the test kit. Not included in V2 IG."
* lotNumber 0..1 MS
* lotNumber ^short = "Lot number of the test kit. Not included in V2 IG."
* serialNumber 0..1 MS
* serialNumber ^short = "Serial number of the test kit. Not included in V2 IG."
* deviceName ^slicing.discriminator.type = #value
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName contains modelName 1..1
* deviceName[modelName] ^short = "LIVD Spreadsheet | LOINC Mapping.Model"
* deviceName[modelName].name MS
* deviceName[modelName].type = #model-name (exactly)