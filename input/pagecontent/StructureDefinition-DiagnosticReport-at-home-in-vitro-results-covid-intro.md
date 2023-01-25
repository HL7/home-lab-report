This is an example of a profile that is based on a framework profile and futher constrained to meet the requirements of the COVID-19 use case. It is based on the [DiagnosticReport - At-Home In-Vitro Results](StructureDefinition-DiagnosticReport-at-home-in-vitro-results.html) profile. 

It constrains the following elements:
* DiagnosticReport.code - consult [LIVD](https://www.cdc.gov/csels/dls/livd-codes.html) to obtain the values to be used for each particular use case
* DiagnosticReport.result - bound to the COVID-19 specific profile [Observation - At-Home In-Vitro Test Result - COVID-19](StructureDefinition-Observation-at-home-in-vitro-test-result-covid.html)