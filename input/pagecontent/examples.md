### Examples
The FHIR examples for this IG are at the following locations:
* [Examples: COVID-19](artifacts.html#examples-covid-19-at-home-in-vitro-test-report)
* [Examples: Participant](artifacts.html#examples-participant)

This IG also contains HL7 V2 fields and examples which are at the following locations:
* [HL7 V2 Fields and Example Messages](hl7_v2_fields_and_example_messages.html)
* [HL7 V2 OTC Example](at-home_in-vitro_test_over_the_counter_purchase_v2_example.html)
* [HL7 V2 Prescription Example](at-home_in-vitro_test_with_prescription_v2_example.html)

### COVID-19 At-Home In-Vitro Test Report and V2
As stated in the [Introduction](index.html#introduction), public health agencies are at present primarily only able to receive HL7 V2 messages and as such a test implementation project will initially send COVID-19 At-Home In-Vitro Test Reports as V2 lab messages.

Within the V2 message, many of the segments contain "hard coded" information. Some examples of this are ordering information and app IDs. Even if the COVID-19 At-Home In-Vitro Test is an ordered test (as opposed to an OTC test) neither the app nor the assay test at the start of the test implementation will have knowledge of ordering information. This FHIR IG aligns, where appropriate, with known and documented FHIR to V2 mappings. In some cases, where the V2 message is hardcoded or constrained to a specific value, this FHIR specification is not further constrained beyond what is present in US Core, but the elements and attibutes are available for use and may be noted in comments.

#### COVID-19 At-Home In-Vitro Test Report to V2 and FHIR Profile Elements Mapping Table
[In-Vitro At-Home Test V2 FHIR Mapping.xlsx](https://docs.google.com/spreadsheets/d/1Vx7WesZzihNiAsHCVPQtSiEJLBQZr8Iy/edit?usp=sharing&ouid=112434457756659409284&rtpof=true&sd=true)