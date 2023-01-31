### Overview

|Implementation Guide (IG) Characteristic  | 	Value |
|------------------------------------------------------|--------------------------------------------|
|**FHIR Version:** |	FHIR R4 |
|**IG Realm:** |	US |
|**IG Type:** |	STU Ballot |
|**Exchange Methods:** |	RESTfulAPI, Messages, Transactions,  Tasks |
|**IG Note:** |	This HL7 FHIR Guide utilizes and adopts guidance or profiles developed in the US Core FHIR&reg; Implementation Guide. This FHIR IG has narrative pages describing the HL7 V2 Message for At-Home In-Vitro Test Reporting and provides some example messages. Presently public health departments usually only can handle and store HL7 V2|
{:.table-striped}

|IG Dependencies	|
|----------------------------------|
| [HL7 FHIR US Core Version 5.0.1](http://hl7.org/fhir/us/core/STU5.0.1/) |
{:.table-striped}


### Background

Point-of-care (POC) and At-Home In-Vitro Tests offer increased accessibility to needed diagnostic solutions during a pandemic. Test results provide value to both the individual taking the tests and also to public health authorities responsible for coordinating a regional and national response. Digital platforms are being developed that allow individual test results, with permission of the individual, to be captured, organized, and transmitted to public health systems. Test manufacturers, working in partnership with these digital platforms, are seeking guidance on how to send test results. With multiple tests already entering the market, there is a need for a unified strategy on data flow of test results from the apps to downstream systems. A national data exchange standard should be supported that guides data exchange from test results residing on individual users’ digital test applications to public health authorities, at both the federal and regional levels.  

### Introduction
This implementation guide (IG) constrains the FHIR [US Core Diagnostic Report for Laboratory Results](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) and the  [US Core Laboratory Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab) for use in transmitting At-Home In-Vitro Test results to local, state, territorial and federal health agencies. The IG will be be used in real world testing. It was developed as part of a collaborative project with the NIH/NIBIB, ONC, a vendor manufacturer of diagnostic healthcare products that makes one of the FDA approved At-Home In-Vitro Test kits, and an app developer who is a leading provider of secure interoperability solutions. The intention of this guide is to assist developers in producing and sending standardized FHIR test result data from tests performed at home. FHIR eases app development and the FHIR US Core IG is in a rapid adoption curve. This guide points to already existing US Core Guidance and other guidance with respect to FHIR Parameters, FHIR operations, and RESTful and SMART on FHIR information.

Due to Public Health Departments' familiarity with V2, a test implementation project related to this implementation guide will initially send COVID-19 At-Home In-Vitro Test Reports as V2 lab messages. Longer term the intent is to leverage FHIR for app creativity, growth, and interoperability. For as long as needed to comply with Public Health Department dependecies on V2, the apps will be designed to transform from FHIR to V2. In addition, as a parallel effort, a V2 <-> FHIR data mapping table has been developed [In-Vitro At-Home Test V2 FHIR Mapping.xlsx](In-Vitro At-Home Test V2 FHIR Mapping.xlsx).

**Please note** : This guide is a framework for future work. It contains "framework" profiles that contain constraints common to all At-Home In-Vitro Test Reporting use cases. These framework profiles can be further constrained to a particular use case such as the COVID-19 At-Home In-Vitro Test Reporting use case. The COVID-19 use case profiles have been created and included in this guide.

### Further Information
[RADx® MARS - Mobile Application Reporting through Standards](https://www.nibib.nih.gov/covid-19/radx-tech-program/mars)

[LOINC In Vitro Diagnostic (LIVD) Test Code Mapping for SARS-CoV-2 Tests](https://www.cdc.gov/csels/dls/sars-cov-2-livd-codes.html)

[Test-Specific HL7v2 Field Values Tool](https://app.powerbigov.us/view?r=eyJrIjoiNjQyZjBkOGEtNjE0ZS00NjUyLTg3NjEtZTIxN2JmODE0ZGE1IiwidCI6IjE0Yjc3NTc4LTk3NzMtNDJkNS04NTA3LTI1MWNhMmRjMmIwNiJ9&pageName=ReportSectionhttps://app.powerbigov.us/view?r=eyJrIjoiNjQyZjBkOGEtNjE0ZS00NjUyLTg3NjEtZTIxN2JmODE0ZGE1IiwidCI6IjE0Yjc3NTc4LTk3NzMtNDJkNS04NTA3LTI1MWNhMmRjMmIwNiJ9&pageName=ReportSection3147535a75468ee60d16)

### Acknowledgements/Primary Authors
* [NIBIB-Interagency Project Team](mailto:krishna.Juluru@pif.gov)
* [CareEvolution](https://careevolution.com)
* [Association of Public Health Laboratories](https://www.aphl.org/Pages/default.aspx)
* [Gay Dolin MSN RN (Namaste Informatics)](mailto:gdolin@NamasteInformatics.com)
* [Sarah Gaunt](mailto:sarah.gaunt@lantanaconsulting.com)



### Authors

<table>
<thead>
<tr>
<th>Name</th>
<th>Email/URL</th>
</tr>
</thead>
<tbody>
<tr>
<td>HL7 International - Orders and Observations</td>
<td><a href="http://www.hl7.org/Special/committees/orders/index.cfm" target="_new">http://www.hl7.org/Special/committees/orders/index.cfm</a></td>
</tr>
</tbody>
</table>


