The **Covid At Home FHIR Diagnostic Reports for Laboratory Results** is based upon the The [US Core Diagnostic Reports for Laboratory Results Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab). In addition to the requirements set in the US Core Diagnostic Report for Laboratory Results Profile to record, search, and fetch/send laboratory test results associated with a patient, this profile:
* References [Covid 19 At-Home Laboratory Test Result](http://homeCovid.com/fhir/structuredefinition/LabObsHomeCovid) @DiagnosticReport.result(Reference)
* Uses the supportingInfo Extension to hold answers to questions asked by the app at the time of the result scan or upload, such as if the patient is having Covid-like symptoms.

Laboratory results are grouped and summarized using the DiagnosticReport resource which references the US Core Lab Observation resource(s). Each Observation resource represents an individual laboratory test and result value or component result values, or a “nested” panel which references other observations. They can also be presented in report form or as free text.  While the At-Home Covid test is a simple single result observation for each test taken - for similarities across similar devloping V2 to FHIR lab mapping and transformations, it was determined to reference the single result in a diagnistic report.

This profile abides by the same rules and contraints identified in the US Core profile with respect to which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using the US Core Laboratory observation profile. 

The intial Covid-At-Home use case encompasses both tests that were ordered and tests that are (OTC). However, neither the Apps nor the testing device will have knowledge of the order information, such as ordering provider. Should this information become available in the workflow DiagnosticReport.basedOn.Reference(ServiceEvent) and/or .basedOn.reference(ServiceEvent) will be constrained for this use.

Patient as performer of the test (Report or the lab observation) is not captured in the V2 message. 
Within FHIR this could be captured and represented with DiagnosticReport.performer.Reference(CareTeam).CareTeam.member.US CorePatientProfile when Public Health Departments are prepared to receive and store this information.


