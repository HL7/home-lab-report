### Implmentation Guide Overview

This At-Home In-Vitro Test Implementation Guide creates a common framework (e.g. FHIR resources, FHIR value sets, etc.) that will be leveraged by multiple condition-specific At-Home In-Vitro Test use cases. The framework artifacts included in this guide are intended to be use case independent

This implementation guide has considered and included examples for the COVID-19 At-Home use case.

Generic FHIR profiles with V2 mappings and implementation guidance for sharing ANY sampling (specimen) test that can now, or in the future, be performed at home

### Framework Profiles

Rather than creating multiple condition-specific profiles for each type of At-Home In-Vitro Test type that only differ by value set binding, this IG contains a set of [framework profiles](artifacts.html#profiles-at-home-in-vitro-test-report-framework) which conform to US Core Profiles (where available) with At-Home In-Vitro specific constraints and/or extensions. Some of the framework profiles are intended to be used as-is and some are intended to be used as a base with further constraints, mainly bindings to condition-specific value sets. Each profile contains information about which type they are and which elements are expected to be further constrained for a specific use case.

There is also a set of [example profiles that represent the COVID-19 use case](artifacts.html#profiles-covid-19-at-home-in-vitro-test-report) which can act as guidance for implementation of different use cases. These example profiles have been instantiated in the [example instacnces](artifacts.html#examples-covid-19-at-home-in-vitro-test-report) included in the guide.

**TODO** - can we have a place in VSAC, link or something, that can be updated with new value sets whenever we get them??

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

This implementation guide supports the recently published [FHIR R4]({{site.data.fhir.path}}index.html) version of the FHIR standard to ensure alignment with the current direction of the FHIR standard. 

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
    <td><a href="{{site.data.fhir.path}}messageheader.html">MessageHeader???</a></td>
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
  /table>