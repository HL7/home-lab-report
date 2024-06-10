### Getting Started
[RADx® MARS - Mobile At Home Reporting through Standards](https://www.nibib.nih.gov/covid-19/radx-tech-program/mars) is an initiative aimed at providing guidance and resources for laboratories and healthcare facilities to rapidly implement and scale COVID-19 testing capabilities. One component of the RADx® MARS program is focused on HL7 version 2 (HL7v2) messaging, a widely used standard for healthcare data exchange.

### HL7 V2
Resources for HL7v2-based reporting can be found in the [“Getting Started: HL7v2”](https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/hl7v2-getting-started) page on the RADx® MARS website.

### FHIR
This implementation guide (IG) contains resources for FHIR-based reporting. It constrains the [US Core Diagnostic Report for Laboratory Results](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-diagnosticreport-lab.html) and the  [US Core Laboratory Observation Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-lab.html) for use in transmitting At-Home In-Vitro Test results to downstream health systems, including public health systems.

#### Patient-specific fields
Patient-related fields fall into two categories: (1) user profile (such as name, address, phone) and (2) test results. User profile fields should require a one-time entry by the individual user of the application. Test result fields need to be populated separately every time a test is taken.

#### Sender-specific fields
Sender-specific fields help to uniquely identify the sending application and are shown in the table below:


| Sender-specific field | FHIR Element  |
|-----------------------|---------------|
| Sending system OID   | [MessageHeader-at-home-in-vitro-test-results.source.id](StructureDefinition-MessageHeader-at-home-in-vitro-test-results-definitions.html#diff_MessageHeader.source.id)|
| Sending facility name  | [MessageHeader-at-home-in-vitro-test-results.sender(US Core Organization.name)](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization-definitions.html#diff_Organization.name) |
| Sending facility ID  | [MessageHeader-at-home-in-vitro-test-results.sender(US Core Organization.identifier)](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization-definitions.html#diff_Organization.identifier) |
| Patient ID Assigner  | [Patient-at-home-in-vitro-test.identifier](StructureDefinition-Patient-at-home-in-vitro-test-definitions.html#diff_Patient.identifier)  |
| Specimen ID Assigner OID  | [Specimen-at-home-in-vitro-test.identifier](StructureDefinition-Specimen-at-home-in-vitro-test-definitions.html#diff_Specimen.identifier) |
{:.table-striped}

The values of these fields will be provided by the [Association of Public Health Laboratories (APHL)](https://www.aphl.org/Pages/default.aspx) and will be unique to each application.

To request sender-specific field values for your organization and/or application, follow the link below:
 * [Sender-specific field values request form](https://app.smartsheet.com/b/form/7bf44b3acefa4fd38a9ed6a18957a296)

To look up existing sender/receiver-specific field values, follow the link below:
 * [Sender/receiver-specific field values look up](https://aphlinformatics.atlassian.net/wiki/spaces/CRL/pages/1454899212/OID+Report+Look+Up)
 
#### Test-specific fields
Test-specific fields help to uniquely identify the type of test that is taken. A diagnostics company may manufacture different types of tests. Each type of test will have its own unique ID. 

Test-specific fields are available in the CDC-published [LOINC In Vitro Diagnostic (LIVD) Test Code Mapping](https://www.cdc.gov/csels/dls/sars-cov-2-livd-codes.html) spreadsheet. Any references to “LIVD Spreadsheet” within this FHIR IG are referring to the [LIVD Test Code Mapping](https://www.cdc.gov/csels/dls/sars-cov-2-livd-codes.html) spreadsheet.

#### Receiver-specific fields

| Receiving System | [MessageHeader-at-home-in-vitro-test-results.destination.name](StructureDefinition-MessageHeader-at-home-in-vitro-test-results-definitions.html#diff_MessageHeader.destination.name) | [MessageHeader-at-home-in-vitro-test-results.destination.id](StructureDefinition-MessageHeader-at-home-in-vitro-test-results-definitions.html#diff_MessageHeader.destination.id) | [MessageHeader-at-home-in-vitro-test-results.destination.receiver(US Core Organization.identifier[CLIA].value)](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization-definitions.html#diff_Organization.identifier:CLIA) | [MessageHeader-at-home-in-vitro-test-results.destination.receiver(US Core Organization.identifier[CLIA].system)](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization-definitions.html#diff_Organization.identifier:CLIA) | [MessageHeader-at-home-in-vitro-test-results.destination.receiver(US Core Organization.identifier[CLIA].type)](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization-definitions.html#diff_Organization.identifier:CLIA) |
|---|---|---|---|---|---|---|
| APHL AIMS Testing | AIMS.INTEGRATION.STG | 2.16.840.1.114222.4.3.15.2 | AIMS.PLATFORM  | 2.16.840.1.114222.4.1.217446 | ISO |
| APHL AIMS Production | AIMS.INTEGRATION.PRD | 2.16.840.1.114222.4.3.15.1 | AIMS.PLATFORM | 2.16.840.1.114222.4.1.217446 | ISO |
| ReportStream | CDC PRIME | 2.16.840.1.114222.4.1.237821 | AIMS.PLATFORM | 2.16.840.1.114222.4.1.237821 | ISO |
{:.table-striped}
