### Overview

|IG Characteristic  | 	Value |
|------------------------------------------------------|--------------------------------------------|
|**FHIR Version:** |	FHIR R4 |
|**IG Realm:** |	US |
|**IG Type:** |	Draft test non balloted |
|**Exchange Methods:** |	RESTfulAPI, Messages, Transactions,  Tasks |
|**IG Note:** |	This HL7 FHIR Guide utilizes and adopts guidance or profiles developed in the US Core FHIR&reg; Implementation Guide. This FHIR IG has narrative pages describing the HL7 V2 Message for At-Home testing and provides some example messages. Presently public health departments usually only can handle and store HL7 V2|
{:.table-striped}

|IG Dependencies         |  IG Code     	| Version                  	|
|----------------------------------|-------------------------|---------------|
| HL7 FHIR US Core           	|  [US Core](https://www.hl7.org/fhir/us/core/)            	| Version 3.1.1|
{:.table-striped}


### Background

Point-of-care (POC) and at-home tests offer increased accessibility to needed diagnostic solutions during a pandemic. Test results have value to the individual taking the tests and also to public health authorities responsible for coordinating a regional and national response. Digital platforms are being developed that allow individual test results, with permission of the individual, to be captured, organized, and transmitted to public health systems. Test manufacturers, working in partnership with these digital platforms, are seeking guidance on where to send test results. With multiple tests already entering the market, there is a need for a unified strategy on data flow of test results from the apps to downstream systems. A national data exchange standard should be supported that guides data exchange from test results residing on individual users’ digital test applications to public health authorities, at both the federal and regional levels.  

### Introduction

This draft guide constrains the [US Core Diagnostic Report for Laboratory Results](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) and the  [US Core Laboratory Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab) for use for transmitting at-home test results to local, state, territorial and federal health agencies. It is an experimental basic guide to be used in real world testing. It was developed in a collaberative project with the NIH/NIBIB, ONC, a vendor manufacturer of diagnostic healthcare products that makes one of the FDA approved home test kits and an App developer - who is a leading provider of secure interoperability solutions. The intention of this guide is to assist developers in producing and sending standardized FHIR test result data perfomed at home. FHIRs eases app development and US Core is in a rapid adoption curve. This guide points to already existing US Core Guidance and other guidance with respect to FHIR Parameters, FHIR operations and RESTful and SMART on FHIR information.

It is also understood that, in general, public health agencies are at present primarily prepared to only receive V2 messages. The App developer is poised to transform this to V2 messages. In addition, as a parallel effort, a V2 data table has been developed for [COVID At Home Test Data Fields](https://nih.sharepoint.com/sites/NIBIB-InteragencyCOVIDTestResultDataFlow/SitePages/COVID-At-Home-Test-Data-Fields.aspx). <-- This link is to be updated to a public link.

**Please note** : This initial guide is a framework for future work. It contains "framework" profiles that contain constraints common to all at-home testing use cases. These framework profiles can be further constrained to a particular use case such as the COVID-19 at-home use case. The COVID-19 at-home use case profiles have been created and included in this guide.

TODO (maybe delete): As such, most referenced resources are not constrained into profiles specific for the Covid-at-Home use case. Comments will be included in the [US Core Diagnostic Report for Laboratory Results](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) and the  [US Core Laboratory Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab) element text fields in some cases highlighting important items that should be included in the referenced resource.

#### US Core Laboratory Report vs. US Core Diagnostic Report

The [US Laboratory Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab) is intended to record or update single laboratory results (though it can also contain component results). An At-Home Covid Test and Result is a "one at a time" test that is performed and resulted.  The [US Core Diagnostic Report Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) is used to group and summarize labs by reference. Public health agencies in most case today can only receive and record Hl7 V2 messages. The V2 Lab Report message, by consensus, has been mapped to Diagnostic Report. Therefore, this draft guide will leverage [US Core Diagnostic Report Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) to send this single result. In addition, it will be necessary to leverage the SupportingInfo extension to hold answers to the questions patients are asked by the app when recording or uploading their test results.

### Workflow (using the COVID-19 At-Home use case)

The process starts out when a patient purchases an over the counter (OTC) test or receives and ordered at home test. The patient interacts with a COVID-19 At-Home app. The test result is then either:
* manually entered
* a mobile device app scans an analyzes the strip and captures demographic patient data.

A single patient may run more than one test. Each test result is a new interaction with the app.

The patient is asked questions by the app, such as presence or absence of Covid-19 like symptoms. The answers are recorded in the app. The questions and answers are considered to be supporting information and similar to, but not the same as "Ask at Order Entry" (AOE) questions by lab standards experts even because:
* there may not be an order
* the answers to the questions do not affect the interpretation of the postive or negative result
* it was determined that for public health departments' receiving and storing data, it is best to be consistent and represent this information with the supportingInformation FHIR Extension.

In this initial test implementation - whether the test is an ordered test or an OTC test - the app is not going to have access to the order details. Therefore, the ServiceEvent for the order will be available for use, but will not be constrained in this IG until later on in the project.

Data standards can support two workflows. In the first, an app negotiates individual relationships with the federal and state public health agencies. Establishing these individual relationships can be burdensome. In a second workflow, an app negotiates relationships with a few data hubs, which then relay the test results to federal and state public health agencies with whom they have previously established relationships. This reduces the burden on the app manufacturer. App manufacturers may choose to partner with a hub maintained by a third-party to simplify internal operations. 

#### Covid-At-Home Workflow
<table><tr><td><img src="CovidAtHomeworkflow.png" /></td></tr></table>



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


