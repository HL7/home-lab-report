This is a framework profile and can be the base of another profile that is further constrained to meet the requirements of a specific use case. See [Specimen - At-Home In-Vitro Test - COVID-19](StructureDefinition-Specimen-at-home-in-vitro-test-covid.html) for an example of such a profile.

The following element is expected to be constrained to a use case specific value set:
* Specimen.type - value set containing the use case specific specimen types (consult [LIVD](https://www.cdc.gov/csels/dls/livd-codes.html) to obtain the values to be used for each particular use case)

See the following pages for guidance:
 * [Using OIDs as Identifiers](technical_guidance.html#using-oids-as-identifiers)
 * [Obtaining App Specific Identifiers](https://build.fhir.org/ig/HL7/home-lab-report/getting_started.html#sender-specific-fields)
 * examples and value set [Hl7VSUniversalIdType](http://terminology.hl7.org/ValueSet/v2-0301) for coding the 'ISO' id type