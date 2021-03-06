### Overview

|IG Characteristic  | 	Value |
|------------------------------------------------------|--------------------------------------------|
|**FHIR Version:** |	FHIR R4 |
|**IG Realm:** |	US |
|**IG Type:** |	STU Ballot |
|**Exchange Methods:** |	RESTfulAPI, Messages, Transactions,  Tasks |
|**IG Note:** |	This HL7 FHIR Guide utilizes and adopts guidance or profiles developed in the US Core FHIR&reg; Implementation Guide. This FHIR IG has narrative pages describing the HL7 V2 Message for At-Home In-Vitro Test Reporting and provides some example messages. Presently public health departments usually only can handle and store HL7 V2|
{:.table-striped}

|IG Dependencies         |  IG Code     	| Version                  	|
|----------------------------------|-------------------------|---------------|
| HL7 FHIR US Core           	|  [US Core](https://www.hl7.org/fhir/us/core/)            	| Version 5.0.1|
{:.table-striped}


### Background

Point-of-care (POC) and At-Home In-Vitro Tests offer increased accessibility to needed diagnostic solutions during a pandemic. Test results provide value to both the individual taking the tests and also to public health authorities responsible for coordinating a regional and national response. Digital platforms are being developed that allow individual test results, with permission of the individual, to be captured, organized, and transmitted to public health systems. Test manufacturers, working in partnership with these digital platforms, are seeking guidance on how to send test results. With multiple tests already entering the market, there is a need for a unified strategy on data flow of test results from the apps to downstream systems. A national data exchange standard should be supported that guides data exchange from test results residing on individual users’ digital test applications to public health authorities, at both the federal and regional levels.  

### Introduction

This implementation guide constrains the [US Core Diagnostic Report for Laboratory Results](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) and the  [US Core Laboratory Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab) for use for transmitting At-Home In-Vitro Test results to local, state, territorial and federal health agencies. It is an STU IG to be used in real world testing. It was developed in a collaborative project with the NIH/NIBIB, ONC, a vendor manufacturer of diagnostic healthcare products that makes one of the FDA approved At-Home In-Vitro Test kits and an App developer - who is a leading provider of secure interoperability solutions. The intention of this guide is to assist developers in producing and sending standardized FHIR test result data perfomed at home. FHIRs eases app development and US Core is in a rapid adoption curve. This guide points to already existing US Core Guidance and other guidance with respect to FHIR Parameters, FHIR operations and RESTful and SMART on FHIR information.

It is also understood that, in general, public health agencies are at present primarily prepared to only receive V2 messages. The App developer is poised to transform this to V2 messages. In addition, as a parallel effort, a V2 data table has been developed for [COVID-19 At-Home In-Vitro Test Report data fields](https://nih.sharepoint.com/sites/NIBIB-InteragencyCOVIDTestResultDataFlow/SitePages/COVID-At-Home-Test-Data-Fields.aspx). <-- This link is to be updated to a public link.

**Please note** : This guide is a framework for future work. It contains "framework" profiles that contain constraints common to all At-Home In-Vitro Test Reporting use cases. These framework profiles can be further constrained to a particular use case such as the COVID-19 At-Home In-Vitro Test Reporting use case. The COVID-19 use case profiles have been created and included in this guide.

### Further Information
[RADx® MARS - Mobile Application Reporting through Standards](https://www.nibib.nih.gov/covid-19/radx-tech-program/mars)

[LOINC In Vitro Diagnostic (LIVD) Test Code Mapping for SARS-CoV-2 Tests](https://www.cdc.gov/csels/dls/sars-cov-2-livd-codes.html)

[Test-Specific HL7v2 Field Values Tool](https://app.powerbigov.us/view?r=eyJrIjoiNjQyZjBkOGEtNjE0ZS00NjUyLTg3NjEtZTIxN2JmODE0ZGE1IiwidCI6IjE0Yjc3NTc4LTk3NzMtNDJkNS04NTA3LTI1MWNhMmRjMmIwNiJ9&pageName=ReportSectionhttps://app.powerbigov.us/view?r=eyJrIjoiNjQyZjBkOGEtNjE0ZS00NjUyLTg3NjEtZTIxN2JmODE0ZGE1IiwidCI6IjE0Yjc3NTc4LTk3NzMtNDJkNS04NTA3LTI1MWNhMmRjMmIwNiJ9&pageName=ReportSection3147535a75468ee60d16)


### Technical Overview
The main sections of this IG are:
* Section 1
* Section 2
* etc - add these and link to relevant pages



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
<tr>
<td>NIBIB-Interagency Project Team</td>
<td><a href="mailto:krishna.Juluru@pif.gov">krishna.Juluru@pif.gov</a></td>
</tr>
<tr>
<td>Gay Dolin MSN RN (Namaste Informatics)</td>
<td><a href="mailto:gdolin@NamasteInformatics.com">gdolin@NamasteInformatics.com</a></td>
</tr>
<tr>
<td>CareEvolution</td>
<td><a href="https://careevolution.com/" target="_new">https://careevolution.com/</a></td>
</tr>
<tr>
<td>Association of Public Health Laboratories</td>
<td><a href="https://www.aphl.org/Pages/default.aspx" target="_new">https://www.aphl.org/Pages/default.aspx</a></td>
</tr>
</tbody>
</table>


