This is a framework profile and can be the base of another profile that is further constrained to meet the requirements of a specific use case. See [Observation - At-Home In-Vitro Test Result - COVID-19](StructureDefinition-Observation-at-home-in-vitro-test-result-covid.html) for an example of such a profile. 

The following elements are expected to be constrained to use case specific value sets:
* Observation.code - value set containing the use case specific test types
* Observation.value - value set containing the use case specific test results
* For Multiplex Assay tests that serve as a single test to diagnose infection caused by multiple viruses (e.g. CDC Flu SC2 Multiplex Assay for SARS-CoV-2, influenza A, and/or influenza B viruses):
** Observation.component.code - value set containing the use case specific test types
** Observation.component.value -  value set containing the use case specific test results