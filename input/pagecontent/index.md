### Overview

|Implementation Guide (IG) Characteristic  | 	Value |
|------------------------------------------------------|--------------------------------------------|
|**FHIR Version:** |	FHIR R4 |
|**IG Realm:** |	US |
|**IG Type:** |	STU Ballot |
|**Exchange Methods:** |	RESTfulAPI, Messages, Transactions,  Tasks |
|**IG Note:** |	This HL7 FHIR Guide utilizes and adopts guidance or profiles developed in the US Core FHIR&reg; Implementation Guide. This FHIR IG has narrative pages describing the HL7 V2 Message for At-Home In-Vitro Test Reporting. Presently public health departments usually only can handle and store HL7 V2|
{:.table-striped}

|IG Dependencies	|
|----------------------------------|
| [HL7 FHIR US Core Version 6.1.0](http://hl7.org/fhir/us/core/STU6.1/) |
{:.table-striped}


### Background
At-home in-vitro tests have become widely available for self-testing without a prescription. Test results provide value to individuals taking the tests, to their healthcare providers, and to public health authorities who conduct surveillance. Digital platforms have been developed that allow individual test results, with permission of the individual, to be captured, organized, and transmitted to public health systems. With multiple at-home tests already on the market, there is a need for a unified strategy on data standards and flow of test results from digital platforms to downstream health systems.  

### Introduction
This implementation guide (IG) constrains the [US Core Diagnostic Report for Laboratory Results](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-diagnosticreport-lab.html) and the  [US Core Laboratory Observation Profile](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-lab.html) for use in transmitting At-Home In-Vitro Test results to downstream health systems, including public health systems. The IG was developed as part of a collaborative project with the NIH/NIBIB, ONC, a vendor manufacturer of diagnostic healthcare products that makes one of the FDA approved At-Home In-Vitro Test kits, and an app developer who is a leading provider of secure interoperability solutions. The intention of this guide is to assist developers in producing and sending standardized FHIR test result data from tests performed at home. FHIR eases app development and the FHIR US Core IG is in a rapid adoption curve. This guide points to already existing US Core Guidance and other guidance with respect to FHIR Parameters, FHIR operations, and RESTful and SMART on FHIR information.

Due to public health department familiarity with HL7v2 and lack of FHIR compatibility, at-home in-vitro test results are currently being sent as V2 lab messages. Longer term, the intent is to leverage FHIR for reporting to public health systems. FHIR should also enable reporting of at-home test results into electronic healthcare record (EHR) systems.

**Please note**: This guide is a framework for future work. It contains “framework” profiles that contain constraints common to all At-Home In-Vitro Test Reporting use cases. These framework profiles can be further constrained to a particular use case such as the COVID-19 At-Home In-Vitro Test Reporting use case. The COVID-19 use case profiles have been created and included in this guide.

### Further Information
[RADx® Mobile At-home Reporting through Standards (MARS)](https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/)

[RADx® MARS - HL7v2 Implementation Guide](https://www.nibib.nih.gov/covid-19/radx-tech-program/mars/HL7v2-implementation-guide)

[LOINC In Vitro Diagnostic (LIVD) Test Code Mapping](https://www.cdc.gov/csels/dls/livd-codes.html)

### Acknowledgements/Primary Authors
* [National Institute of Biomedical Imaging and Bioengineering (NIBIB)](https://www.nibib.nih.gov/covid-19/radx-tech-program/mars)
* [CareEvolution](https://careevolution.com/)
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