### COVID-19 At-Home In-Vitro Test Report and V2
As stated in the [Introduction](index.html#introduction), public health agencies are at present primarily only able to receive HL7 V2 messages. Within the V2 message, many of the segments contain “hardcoded” information. Some examples of this are ordering information and app IDs. Even if the COVID-19 At-Home In-Vitro Test is an ordered test (as opposed to an OTC test), neither the app nor the assay will have knowledge of ordering information. This FHIR IG aligns, where appropriate, with known and documented FHIR to V2 mappings. In some cases, where the V2 message is hardcoded or constrained to a specific value, this FHIR specification is not further constrained beyond what is present in US Core, but the elements and attributes are available for use and may be noted in comments.

The data elements in this FHIR IG are determined by the use case, as well as to support translation to a HL7 V2.5.1 ELR R1 compliant message, which is what many public health departments currently require. Elements, especially in the MSH segment, that can be hardcoded for that IG, like the version number or the message event, are not included, but need to be added during translation. ORC elements need to be populated based on the [guidance around OTC reporting](https://confluence.hl7.org/display/OO/Proposed+HHS+ELR+Submission+Guidance+using+HL7+v2+Messages#ProposedHHSELRSubmissionGuidanceusingHL7v2Messages-ReportingatHomeTests).

#### COVID-19 At-Home In-Vitro Test Report to V2 and FHIR Profile Elements Mapping
This FHIR IG profiles specify FHIR-to-V2 mappings within their “Description & Constraints” fields.

### Examples
The FHIR examples for this IG are at the following locations:
* [Examples: COVID-19](artifacts.html#examples-covid-19-at-home-in-vitro-test-report)
* [Examples: Participant](artifacts.html#examples-participant)