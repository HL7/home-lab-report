It is based on the **US Core Patient** profile with a further constraint for the county (Patient.address.district) where the patient resides.

Patient.gender is the only required "sex" parameter. (Patient.gender is not "gender identity"). Patient.gender is asserted by the patient. As this profile is to be used with at-home test kits, there is no "clinical sex" information on result observations and the receiver would need to keep this in mind when determining the correct sex parameter for clinical use. It should be understood that Patient.gender is not necessarily appropriate to use for interpretation of result observations.

See the following pages for guidance:
 * [Using OIDs as Identifiers](technical_guidance.html#using-oids-as-identifiers)
 * [Obtaining App Specific Identifiers](https://build.fhir.org/ig/HL7/home-lab-report/getting_started.html#sender-specific-fields)
 * examples and value set [Hl7VSUniversalIdType](http://terminology.hl7.org/ValueSet/v2-0301) for coding the 'ISO' id type