### Implementation Guide Overview

This At-Home In-Vitro Test Implementation Guide creates a common framework (e.g. FHIR resources, FHIR value sets, etc.) that will be leveraged by multiple condition-specific At-Home In-Vitro Test use cases. The framework artifacts included in this guide are intended to be use case independent.

### Framework Profiles

Rather than creating multiple condition-specific profiles that only differ by value set binding for each type of At-Home In-Vitro Test type, this IG contains a set of [framework profiles](artifacts.html#profiles-at-home-in-vitro-test-report-framework) which conform to US Core Profiles (where available) with At-Home In-Vitro specific constraints and/or extensions. Some of the framework profiles are intended to be used as-is and some are intended to be used as a base with further constraints, mainly bindings to condition-specific value sets. Each profile contains information about which type they are and which elements are expected to be further constrained for a specific use case.

There is a set of [COVID-19 use case profiles](artifacts.html#profiles-covid-19-at-home-in-vitro-test-report) which should act as guidance for implementation of different use cases. These profiles have been instantiated in the [example instances](artifacts.html#examples-covid-19-at-home-in-vitro-test-report) included in the guide.

 <table border="1">
  <thead>
    <tr>
      <th>Framework Profile</th>
      <th>Description</th>
      <th>Element to Constrain for Specific Use Case</th>
      <th>Constraint Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="column-width:30%">
        <a href="StructureDefinition-Bundle-at-home-in-vitro-test.html" title="StructureDefinition/Bundle-at-home-in-vitro-test">Bundle - At-Home In-Vitro Test</a>
      </td>
      <td>
        <p>This profile constrains the Bundle resource for At-Home Sample Tests.</p>
      </td>
      <td>Bundle.entry</td>
      <td>Reference to an <a href="StructureDefinition-DiagnosticReport-at-home-in-vitro-results.html" title="StructureDefinition/Observation-at-home-in-vitro-test-result"> DiagnosticReport - Home
        Lab Results</a> constrained to the specific use case</td>
    </tr>
    <tr>
      <td style="column-width:30%">
        <a href="StructureDefinition-Device-at-home-in-vitro-test.html" title="StructureDefinition/Device-at-home-in-vitro-test">Device - At-Home In-Vitro Test</a>
      </td>
      <td>
        <p>This profile constrains the Device resource for At-Home Sample Tests.</p>
      </td>
      <td colspan="2">Use as is for all use cases</td>
    </tr>
    <tr>
      <td style="column-width:30%">
        <a href="StructureDefinition-DiagnosticReport-at-home-in-vitro-results.html" title="StructureDefinition/DiagnosticReport-at-home-in-vitro-results">DiagnosticReport - At-Home In-Vitro Results</a>
      </td>
      <td>
        <p>This profile constrains the US Core DiagnosticReport for Laboratory Results profile to At-Home Sample Tests.</p>
      </td>
      <td>DiagnosticReport.result</td>
      <td>Reference to an <a href="StructureDefinition-Observation-at-home-in-vitro-test-result.html" title="StructureDefinition/Observation-at-home-in-vitro-test-result">Observation - At-Home In-Vitro
        Test Result</a> constrained to the specific use case (e.g. <a href="StructureDefinition-Observation-at-home-in-vitro-test-result.html"
          title="StructureDefinition/Observation-at-home-in-vitro-test-result-covid">Observation - At-Home In-Vitro Test Result - COVID-19</a>)</td>
    </tr>
    <tr>
      <td style="column-width:30%">
        <a href="StructureDefinition-MessageHeader-at-home-in-vitro-test-results.html" title="StructureDefinition/MessageHeader-at-home-in-vitro-test-results">MessageHeader - At-Home In-Vitro Test Results</a>
      </td>
      <td>
        <p>This MessageHeader represents the At-Home In-Vitro Test Results being sent from an application server to a health authority.</p>
      </td>
      <td colspan="2">Use as is for all use cases</td>
    </tr>
    <tr>
      <td style="column-width:30%">
        <a href="StructureDefinition-Observation-patient-question-answer.html" title="StructureDefinition/Observation-patient-question-answer">Observation - Patient Question Answer</a>
      </td>
      <td>
        <p>This profile constrains the FHIR Observation Resource to represent an answer given to a question asked of the patient by the app when recording or uploading their test results.</p>
      </td>
      <td colspan="2">Use as is for all use cases</td>
    </tr>
    <tr>
      <td rowspan="2" style="column-width:30%">
        <a href="StructureDefinition-Observation-at-home-in-vitro-test-result.html" title="StructureDefinition/Observation-at-home-in-vitro-test-result">Observation - At-Home In-Vitro Test Result</a>
      </td>
      <td rowspan="2">
        <p>This profile constrains the US Core Laboratory Result Observation to At-Home Sample Tests.</p>
      </td>
      <td>Observation.code</td>
      <td>Bind to a value set containing the condition-specific test types</td>
    </tr>
    <tr>
      <td>Observation.value[x]</td>
      <td>Bind to a value set containing the condition-specific test results</td>
    </tr>
    <tr>
      <td style="column-width:30%">
        <a href="StructureDefinition-Specimen-at-home-in-vitro-test.html" title="StructureDefinition/Specimen-at-home-in-vitro-test">Specimen - At-Home In-Vitro Test</a>
      </td>
      <td>
        <p>This Specimen profile identifies and describes the specimen used in an At-Home Sample Test.</p>
      </td>
      <td>Specimen.type</td>
      <td>Bind to a value set containing the use case specific specimen types</td>
    </tr>
  </tbody>
</table>

### Underlying Specifications

This guide is based on the [HL7 FHIR]({{site.data.fhir.path}}index.html) standard and the [US Core IG](https://www.hl7.org/fhir/us/core/index.html) specification, which builds additional capabilities on top of FHIR.  This IG is intended to maximize the number of systems that can conform to this guide as well as to allow for easy growth and extensibility of system capabilities in the future.

Implementers of this specification must understand some basic information about the underlying specifications listed above.

#### FHIR

This IG uses terminology, notations and design principles that are specific to the HL7 FHIR standard. Before reading this implementation guide, it is important to be familiar with the basic principles of FHIR and how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to review the following prior to reading the rest of this implementation guide.

* [FHIR overview]({{site.data.fhir.path}}overview.html)
* [Developer's introduction]({{site.data.fhir.path}}overview-dev.html) (or [Clinical introduction]({{site.data.fhir.path}}overview-clinical.html))
* [FHIR data types]({{site.data.fhir.path}}datatypes.html)
* [Using codes]({{site.data.fhir.path}}terminologies.html)
* [References between resources]({{site.data.fhir.path}}references.html)
* [How to read resource & profile definitions]({{site.data.fhir.path}}formats.html)
* [Base resource]({{site.data.fhir.path}}resource.html)

This implementation guide is based on R4 version of the HL7 FHIR Standard.

### FHIR Resources Used

The table below identifies the specific FHIR Resources and their purposes that are used in this IG.

<table>
  <thead>
    <tr>
      <th>FHIR Resource</th>
      <th>Purpose</th>
    </tr>
  </thead>
	<tr>
    <td><a href="{{site.data.fhir.path}}bundle.html">Bundle</a></td>
	<td>Used to group resources for submitting results.</td>
  </tr>
	<tr>
    <td><a href="{{site.data.fhir.path}}device.html">Device</a></td>
	<td>Used to represent At-Home In-Vitro tests.</td>
  </tr>
	<tr>
    <td><a href="{{site.data.fhir.path}}diagnosticreport.html">DiagnosticReport</a></td>
	<td>Used to organize the results of an At-Home In-Vitro test.</td>
  </tr>
	<tr>
    <td><a href="{{site.data.fhir.path}}observation.html">Observation</a></td>
	<td>Used to represent the results of an At-Home In-Vitro test, presence of related symptoms, symptom onset time.</td>
  </tr>
	<tr>
    <td><a href="{{site.data.fhir.path}}specimen.html">Specimen</a></td>
	<td>Used to represent type of specimen used in the At-Home In-Vitro test.</td>
  </tr>
	<tr>
    <td><a href="{{site.data.fhir.path}}patient.html">Patient</a></td>
	<td>Used to represent the patient taking the At-Home In-Vitro test.</td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.path}}valueset.html">ValueSet</a></td>
	<td>Used to group codes for various uses such as use case specific test types, test results, specimen types etc.</td>
  </tr>
  
  <tr>
    <td><a href="{{site.data.fhir.path}}messageheader.html">MessageHeader</a></td>
	<td>Used to specify metadata for routing.</td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.path}}organization.html">Organization</a></td>
	<td>Representing test manufacturers.</td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.path}}location.html">Location</a></td>
	<td>Used to represent locations in workflows.</td>
  </tr>
  <tr>
    <td><a href="{{site.data.fhir.path}}endpoint.html">Endpoint</a></td>
	<td>Used to represent routing information.</td>
  </tr>
  </table>