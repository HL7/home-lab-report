### Connectathon Specific File Locations and Information

* [Track information](https://confluence.hl7.org/pages/viewpage.action?pageId=90359890)
* [Project information](https://confluence.hl7.org/display/OO/At-Home+In-Vitro+Test+Report)
* [Zulip chat stream](https://chat.fhir.org/#narrow/stream/322481-At-Home-In-Vitro-Test-IG)
* Connectathon Test server: [https://connectathon.lantanagroup.com](https://connectathon.lantanagroup.com)
* [Google Sheet for recording Connectathon issues](https://docs.google.com/spreadsheets/d/1QDOHAa2RveHF78lvcww5qkIlJAfxKLer7GJIVOC4lVY/edit#gid=46054766)
* [Temporary Google Docs (in-progress) V2 to FHIR mapping file](https://docs.google.com/spreadsheets/d/1d8kBi4tAFFR-lzyGtLIFQl9rjMv4bRTN/edit#gid=762662633)
* [FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator)

### Instructions on how to use the FHIR Validator to validate XML instances against the At-Home In-Vitro Test IG

#### Downloads and General Instructions
Download the FHIR Validator: [https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar](https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar)

General instructions here: [https://www.hl7.org/fhir/validation.html](https://www.hl7.org/fhir/validation.html) and here: [Using the FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator)

#### Relevant Parameters

Current version of the At-Home In-Vitro Test IG
```-ig hl7.fhir.us.home-lab-report#current```

Version 4.0.1 of FHIR
```-version 4.0.1```

(Optional - send validation output to a file)
```-output <filename.xml>```

### Examples

#### Example 1 - no validation output file:

```java -jar validator_cli.jar "input\resources\bundle\bundle-at-home-in-vitro-test-results-p-noelle.xml" -version 4.0.1 -ig hl7.fhir.us.home-lab-report#current```

#### Example 2 - with validation output sent to file

```java -jar validator_cli.jar "input\resources\bundle\bundle-at-home-in-vitro-test-results-p-noelle.xml" -version 4.0.1 -ig hl7.fhir.us.home-lab-report#current -output validation.xml```

#### Example Validation Output

[validation.xml](https://confluence.hl7.org/download/attachments/90359890/validation.xml?version=1&modificationDate=1651562228080&api=v2)