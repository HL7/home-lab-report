### Modeling

#### US Core Laboratory Report vs. US Core Diagnostic Report

The [US Laboratory Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab) is intended to record or update single laboratory results (though it can also contain component results - see [Multiplex Tests](#multiplex-tests)). An At-Home In-Vitro Test and Result is a "one at a time" test that is performed and resulted.  The [US Core Diagnostic Report Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) is used to group and summarize test results by reference. Public health agencies in most cases today, can only receive and record HL7 V2 messages. The V2 Lab Report message, by consensus, has been mapped to Diagnostic Report. Therefore, this guide has leveraged the [US Core Diagnostic Report Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) to send this single result. In addition, it was necessary to leverage the FHIR [SupportingInfo extension](http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo) to hold answers to questions patients are asked by the app when recording or uploading their test results.

#### Multiplex tests

Multiplex Assay tests that serve as a single test to diagnose infection caused by multiple viruses (e.g. CDC Flu SC2 Multiplex Assay for SARS-CoV-2, influenza A, and/or influenza B viruses), use multiple Observation.component elements to record each type of test.

### RESTful FHIR Interactions Quick Start Guidance
Please see [US Core Quick start](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html#quick-start) for an overview of search and read operations for this profile.

### SMART App Launch
Please see [SMART App Launch](http://build.fhir.org/ig/HL7/smart-app-launch/) for guidance around SMART apps including IDs.
This flow is not the same as an App that integrates with an EHR - so the sequence diagram is likely simpler.

#### App ID
The ClientID is typically the App ID when using SMART in FHIR App Launch. It is often a guid. 
This project needs to determine if a guid will be used/assigned for the App(s) involved in the interaction or a format based on ID construction heuristics.
The project will also explore if the App ID (ClientID) should also be sent within the profile message itself. This is not typically done within the resource itself - but could be replicated within the [meta.source](https://www.hl7.org/fhir/resource.html#Meta) available in the base resource. Care would need to be taken the the ClientID (App ID) in the SMART Launch workflow fields and the ID in the meta.versionID fields do not conflict.

### Extended Operations on the RESTful API
Please see [Extended Operations on the RESTful API ofr](http://hl7.org/fhir/R4/operations.html) for guidance on a set of common interactions (read, update, search, etc.) performed on a repository of typed resources. These interactions follow the RESTful paradigm of managing state by Create/Read/Update/Delete actions on a set of identified resources.

### FHIR Bundle Resource
Given that the COVID-19 At-Home In-Vitro Test Report use case consists of a single test or series of tests, independantly run by a patient, and is resulted from a "Lateral Flow Assay" device and then collected and/or sent by an App, there is no database (e.g. EHR database) from which referenced resources can be queried and returned.  As such, any resource representing the lab result itself, "ask at "order" (AOE) answers, etc. will need to be packaged together into a Bundle resource. The primary "bundling" function for this use case is for "Sending a set of resources as part of a message exchange (see [Messaging](https://www.hl7.org/fhir/messaging.html))"

Please see [Resource Bundle](https://www.hl7.org/fhir/bundle.html) for detailed Instructions.