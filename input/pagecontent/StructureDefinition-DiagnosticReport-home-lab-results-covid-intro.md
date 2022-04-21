This is an example of a profile that is based on a framework profile and futher constrained to meet the requirements of the COVID-19 use case. It is based on the [DiagnosticReport - Home Lab Results](StructureDefinition-DiagnosticReport-home-lab-results.html) profile. 

It constrains the following elements:
* DiagnosticReport.code - value set binding which only allows LOINC codes appropriate for and currently used for at-home COVID-19 tests
* DiagnosticReport.result - bound to the COVID-19 specific profile [Observation - Home Lab Test Result - COVID-19](StructureDefinition-Observation-home-lab-test-result-covid.html)