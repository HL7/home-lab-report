### V2 Example Messages
The following child pages represent the 2 types of home tests in the intial project. The two scenarios are described below.

#### [At-Home In-Vitro Test Over the Counter Purchase](at-home_in-vitro_test_over_the_counter_purchase_v2_example.html)
* Patient buys test
* Patient performs testing
* Result is obtained via an App that then does the reporting

This may result in limited data fidelity with no verification of the following: 
  1. the person tested is the recorded patient, 
  2. how the specimen was collected,
  3. if the test procedure was followed,
  4. if the interpretation of the result and subsequent reporting is accurate, unless the app performs the interpretation,
  5. data about the patient is accurate.

**The following segments are constrained:**
* Ordering Provider First Name (ORC-12.3/OBR-16.3) = “SA.OverTheCounter”
* Ordering Facility Name (ORC-21.1) = “SA.OverTheCounter”
* Ordering Facility Address (ORC-22) = <Copy patient address (PID-11)> 
* Ordering Facility Phone (ORC-23) = <Copy Patient Home Phone (PID-13); if not available, use default value ^^^^111^1111111>
* Performing Facility Name (OBX-23.1) = “SA.OverTheCounter”
* Performing Facility CLIA (OBX-15.1 and OBX-23.10) = 00Z0000042
* Performing Facility Address (OBX-24) = “14 Fake AtHome Test Street^^Fake City^AK^99689^^^^02282”

Allowed test kits with EUA for this purpose:
* Ellume’s  COVID-19 Home Test_Ellume Limited -– OBX-17.1 = Ellume COVID-19 Home Test_Ellume Limited_EUA
* Cue Health Inc’s Cue COVID-19 Test for Home and Over The Counter (OTC) Use – OBX-17.1 = Cue COVID-19 Test for Home and Over The Counter (OTC) Use_Cue Health Inc._EUA

Example message is for Ellume’s COVID-19 Home Test sent by OneAbbott: InterPartner~CentralizedELR~OneAbbott~AIMSPlatform~Test~Test~2021012816241013~STOP~TestMessageSA.OTC_AL_FINAL

#### [At-Home In-Vitro Test with Prescription](at-home_in-vitro_test_with_prescription_v2_example.html)
* Patient is prescribed the test
* Patient obtains the kit
* Sample collection and test performance is unsupervised
* Result is obtained via app that then does the reporting

This may result in limited data fidelity withno verification of the following: 
1. that the person tested is the recorded patient, 
2. how the specimen was collected, 
3. if the test procedure was followed, 
4. if the interpretation of the result and subsequent reporting is accurate.

**The following segments are constrained:**
* Ordering Facility Name (ORC-21.1) = <Copy Ordering Provider Name (ORC-12/OBR-16), if no separate facility>
* Ordering Facility Address (ORC-22) = <Copy Ordering Provider Address (ORC-24), if no separate facility>
* Ordering Facility Phone (ORC-23) = <Copy Callback number (ORC-14/OBR17), if no separate facility number, else use default value ^^^^111^1111111>
* Performing Facility Name (OBX-23.1) = “SA.Prescription”
* Performing Facility CLIA (OBX-15.1 and OBX-23.10) = 00Z0000043
* Performing Facility Address (OBX-24) = “15 Fake AtHome Test Street^^Fake City^AK^99689^^^^02282”

Allowed test kits with EUA for this purpose:
* Lucira Health, Inc.’s Lucira COVID-19 All-In-One Test Kit – OBX-17.1 =Lucira COVID-19 All-In-One Test Kit_Lucira Health, Inc._EUA (will soon be updated in LIVD to: 00810055970001_DIT)
* Quidel Corporation’s QuickVue At-Home COVID-19 Test – OBX-17.1 = QuickVue At-Home COVID-19 Test_Quidel Corporation_EUA (will soon be updated in LIVD to: 30014613339373_DIT)

Example message is for Quidel Corporation’s QuickVue At-Home COVID-19 Test sent by OneAbbott: InterPartner~CentralizedELR~OneAbbott~AIMSPlatform~Test~Test~2021012816241013~STOP~TestMessageSA.Prescription_AL_FINAL