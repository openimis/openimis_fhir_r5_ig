// This is the profile for openIMIS Contract 
// Only for POST 
Instance: Claim001Feedback
InstanceOf: OpenIMISCommunicationRequest
Description: """
            * Example of a Claim   
            """

* identifier[UUID].value = "D30F70DF-D10B-43D4-BF31-5137C118AD83"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID

* status = FHIRRequestStatus#active "Active"
* statusReason = FeedbackStatusCS#4 "Selected"

* subject = Reference(john-doe)

* about = Reference(Claim001)

* payload[CareRendered].contentString = "Care Rendered? (yes|no)"
* payload[PaymentAsked].contentString = "PaymentAsked? (yes|no)"
* payload[DrugPrescribed].contentString = "DrugPrescribed? (yes|no)"
* payload[DrugReceived].contentString = "DrugReceived? (yes|no)"
* payload[Asessment].contentString = "Asessment? (0|1|2|3|4|5)"

* recipient = Reference(Roberts-Jeb-EO)
