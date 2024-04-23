### Modeling

#### US Core Laboratory Report vs. US Core Diagnostic Report

The [US Laboratory Observation Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab) is intended to record or update single laboratory results (though it can also contain component results - see [Multiplex Tests](#multiplex-tests)). An At-Home In-Vitro Test and Result is a “one at a time” test that is performed and resulted. Each test and result consists of a single test kit. A test kit can be a Multiplex Assay test that serves as a single test to diagnose infection caused by multiple viruses. Only one Observation is allowed per DiagnosticReport - that one Observation can contain multiple hasMembers that reference the results of the multiplex assay tests. The [US Core Diagnostic Report Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) is used to group and summarize test results by reference. Public health agencies in most cases today, can only receive and record HL7 V2 messages. The V2 Lab Report message, by consensus, has been mapped to Diagnostic Report. Therefore, this guide has leveraged the [US Core Diagnostic Report Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) to send this single result. In addition, it was necessary to leverage the FHIR [SupportingInfo extension](http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo) to hold answers to questions patients are asked by the app when recording or uploading their test results.

#### Multiplex tests
Multiplex Assay tests that serve as a single test to diagnose infection caused by multiple viruses (e.g. CDC Flu SC2 Multiplex Assay for SARS-CoV-2, influenza A, and/or influenza B viruses), use multiple Observation.hasMember to record each type of test in a reference to another Observation.

### Serial Testing
Based on updated guidance from FDA advising that tests be repeated multiple times conditioned on symptoms, the guidance to record this is to use [Observation - Patient Question Answer](StructureDefinition-Observation-patient-question-answer.html) to ask whether patient has previously taken a test and can then determine other tests and their sequence by finding other tests taken by patient and using date.

### RESTful FHIR Interactions Quick Start Guidance
Please see [US Core Quick start](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html#quick-start) for an overview of search and read operations for this profile.

### SMART App Launch
Please see [SMART App Launch](http://www.hl7.org/fhir/smart-app-launch/) for guidance around SMART apps including IDs.
This flow is not the same as an App that integrates with an EHR - so the sequence diagram is likely simpler.

### Extended Operations on the RESTful API
Please see [Extended Operations on the RESTful API](http://hl7.org/fhir/R4/operations.html) for guidance on a set of common interactions (read, update, search, etc.) performed on a repository of typed resources. These interactions follow the RESTful paradigm of managing state by Create/Read/Update/Delete actions on a set of identified resources.

### FHIR Bundle Resource
Given that the COVID-19 At-Home In-Vitro Test Report use case consists of a single test or series of tests, independently run by a patient, and is resulted from a "Lateral Flow Assay" device and then collected and/or sent by an App, there is no database (e.g. EHR database) from which referenced resources can be queried and returned.  As such, any resource representing the lab result itself, "ask at order" (AOE) answers, etc. will need to be packaged together into a Bundle resource. As outlined in the Scope and Usage section of the [Resource Bundle](https://www.hl7.org/fhir/bundle.html), the primary “bundling” function for this use case is “Sending a set of resources as part of a message exchange".

### Using OIDs as Identifiers
A numeric or alphanumeric string that is associated with a single object or entity within a given system. One type of identifier is an OID (object identifier). See the [FHIR identifier data type guidance](http://hl7.org/fhir/R4/datatypes.html#identifier) for further details on using OIDs as Identifiers, specifially the paragraph that discusses the case when the identifier value itself is naturally a globally unique URI.