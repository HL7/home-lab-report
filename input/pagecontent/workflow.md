### Workflow (using the COVID-19 At-Home In-Vitro Test Report use case)

The process starts when a patient purchases an over the counter (OTC) test or receives an ordered COVID-19 At-Home In-Vitro Test. The patient interacts with a COVID-19 At-Home In-Vitro Test app. The test result is then either:
* manually entered
* a mobile device app scans an analyzes the strip and captures demographic patient data.

A single patient may run more than one test. Each test result is a new interaction with the app.

The patient is asked questions by the app, such as presence or absence of COVID-19 like symptoms. The answers are recorded in the app. The questions and answers are considered to be supporting information and similar to "Ask at Order Entry" (AOE) questions. These questions are not considered the same as "Ask at Order Entry" (AOE) questions by lab standards experts because:
* there may not be an order
* the answers to the questions do not affect the interpretation of the postive or negative result
* it was determined that for public health departments' receiving and storing data, it is best to be consistent and represent this information with the supportingInformation FHIR Extension.

In this initial implementation - whether the At-Home In-Vitro Test is ordered or OTC - the app will not have access to the order details. Therefore, the ServiceEvent for the order will not be constrained in this IG until later in the project.

Data standards can support two workflows. In the first, an app negotiates individual relationships with the federal and state public health agencies. Establishing these individual relationships can be burdensome. In a second workflow, an app negotiates relationships with a few data hubs, which then relay the At-Home In-Vitro Test result to federal and state public health agencies with whom they have previously established relationships. This reduces the burden on the app manufacturer. App manufacturers may choose to partner with a hub maintained by a third-party to simplify internal operations. 

#### COVID-19 At-Home In-Vitro Test Report Workflow

<table><tr><td><img src="CovidAtHomeworkflow.png" /></td></tr></table>