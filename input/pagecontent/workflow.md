### Workflow (generic/typical workflow - informative)
A generic or typical At-Home In-Vitro Test Report use case starts when a patient either purchases an over the counter (OTC) at-home test or receives an ordered at-home test. The patient interacts with an At-Home In-Vitro Test app. The test result is then either:
 * manually entered into a web or mobile app, or
 * scanned by reader device which interprets the test and passes it to a mobile app.

A single patient may run more than one test. Each test result is a new interaction with the app.

The patient may be asked questions by the app, such as presence or absence of use case-specific symptoms. The questions and answers are considered to be supporting information and similar to “Ask at Order Entry” (AOE) questions. These questions are not considered the same as “Ask at Order Entry” (AOE) questions by lab standards experts because:

 * the answers to the questions do not affect the interpretation of the positive or negative result
 * they are there to support public health surveillance

This solution of representing the information with the [supportingInfo Extension](StructureDefinition-Extension-at-home-in-vitro-test-supporting-info.html) was chosen during the COVID-19 pandemic, as it is a supported way for laboratories to add information to their LIS and subsequently send it out. Long term, this information should be coming from other systems to public health systems, so the lab does not need to store information just for the sake of forwarding it. 

Whether the at-home test is ordered or purchased OTC, the app will not have access to the order details. Therefore, the ServiceRequest for the order will not be constrained in this IG.

Rather than apps establishing individual relationships with federal and state public health agencies, apps negotiate relationships with a data hub (i.e., routing service), which then relays the At-Home In-Vitro Test result to federal and state public health agencies with whom the hub has previously established relationships. This reduces the burden on the app manufacturer.


### Workflow (using the COVID-19 At-Home In-Vitro Test Report use case - normative)
The COVID-19 At-Home In-Vitro Test Report use case starts when a patient either purchases an OTC COVID-19 at-home test or receives an ordered COVID-19 at-home test. The patient interacts with a COVID-19 At-Home In-Vitro Test app. The test result is then either:

 * manually entered into a web or mobile app, or
 * scanned by a reader device which interprets the test and passes it to a mobile app.

A single patient may run more than one test. Each test result is a new interaction with the app.

The patient is asked questions by the app, such as presence or absence of COVID-19-like symptoms.

The app negotiates relationships with a data hub, which then relays the At-Home In-Vitro Test result to federal and state public health agencies with whom the hub has previously established relationships.

#### COVID-19 At-Home In-Vitro Test Report Workflow
<table><tr><td><img src="CovidAtHomeworkflow.png" /></td></tr></table>