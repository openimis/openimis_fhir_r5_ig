ValueSet: CommunicationRequestStatusVS
Id: communication-request-status
Title: "Claim Feedback Status (CommunicationRequest)"
Description: "Indicates the status of a feedback (Claim)."
* FHIRRequestStatus#active "Active"
* FHIRRequestStatus#revoked "Revoked"
* FHIRRequestStatus#completed "Completed"

ValueSet: FeedbackStatusVS
Id: feedback-status
Title: "Feedback Status (CommunicationRequest)"
Description: "Indicates the Feedback Status for a CommunicationRequest. Partial list defined by openIMIS. Can not be extended."
* codes from system FeedbackStatusCS

ValueSet: FeedbackPayloadVS
Id: feedback-payload
Title: "Feedback Payload (CommunicationRequest | Communication)"
Description: "Indicates the Feedback Payload code for a CommunicationRequest and Communication. List defined by openIMIS. Can not be extended."
* codes from system FeedbackPayloadCS