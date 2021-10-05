CodeSystem: FeedbackStatusCS
Id: feedback-status
Title: "Feedback Status (CommunicationRequest)"
Description: "Indicates the Feedback Status for a CommunicationRequest. Partial list defined by openIMIS. Can not be extended."
* #4 "Selected" "Selected for Feedback"
* #8 "Delivered" "Feedback delivered"
* #16 "Bypassed" "Feedback bypassed"

CodeSystem: FeedbackPayloadCS
Id: feedback-payload
Title: "Feedback Payload (CommunicationRequest | Communication)"
Description: "Indicates the Feedback Payload code for a CommunicationRequest and Communication. List defined by openIMIS. Can not be extended."
* #CareRendered "Care Rendered? (yes|no)"
* #PaymentAsked "Payment Asked? (yes|no)"
* #DrugPrescribed "Drug Prescribed? (yes|no)"
* #DrugReceived "Drug Received? (yes|no)"
* #Asessment "Asessment? (0|1|2|3|4|5)"