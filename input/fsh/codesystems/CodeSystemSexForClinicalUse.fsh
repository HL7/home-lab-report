CodeSystem: CodeSystemSexForClinicalUse
Id: codesystem-sex-for-clinical-use
Title: "CodeSystem - Sex for Clinical Use"
Description: "This CodeSystem is a copy of the not-yet-published 6.0.0-ballot version US Core Sex for Clinical Use Code System and contains codes that represent the sex characterization appropriate for the associated clinical context."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-01-25T00:56:14.339+00:00"
* ^meta.source = "#7c5TWhe6s2tGm1u4"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-01-10"
* ^publisher = "Orders & Observations (http://www.hl7.org/Special/committees/orders/index.cfm)"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^caseSensitive = true
* ^content = #complete
* ^property.code = #usage-note
* ^property.description = "Usage notes for the concept."
* ^property.type = #string
* #female "Female sex for clinical use" "Available data indicates that diagnostics, analytics, and treatments should consider best practices associated with female reference populations."
* #male "Male sex for clinical use" "Available data indicates that diagnostics, analytics, and treatments should consider best practices associated with male reference populations."
* #specified "Specified sex for clinical use" "Available data indicates that diagnostics, analytics, and treatment best practices may be undefined or not aligned with sex-derived reference populations.  Additional information (usually, but not always, in the form of comments and/or observations) is available, but does not align with male sex for clinical use or female sex for clinical use."
* #specified ^property.code = #usage-note
* #specified ^property.valueString = "Individuals or systems providing care should either use default behavior that is safe for both male and female populations, individually review treatment options with the patient, or carefully inspect comments and relevant observations before proceeding with treatment. Systems that are unable to review additional information that may be associated with an SFCU value may manage a SPECIFIED and an UNKNOWN value in the same way."
* #unknown "Unknown" "No information can be provided."
* #unknown ^property.code = #usage-note
* #unknown ^property.valueString = "Systems that are unable to review additional information that may be associated with an SFCU value may manage a SPECIFIED and an UNKNOWN value in the same way."