// This is the profile for openIMIS Contract 
// Only for POST 
Instance: Claim001CommunicationRequest
InstanceOf: OpenIMISCommunicationRequest
Description: """
            * Example of a CommunicationRequest
            """

* status = FHIRRequestStatus#active "Active"
* intent = #order
* statusReason = FeedbackStatusCS#4 "Selected"

* subject = Reference(john-doe)

* about = Reference(Claim001)

* payload[CareRendered]
  * contentCodeableConcept.text = "Care Rendered? (yes|no)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#CareRendered 
* payload[PaymentAsked]
  * contentCodeableConcept.text = "Payment Asked? (yes|no)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#PaymentAsked 
* payload[DrugPrescribed]
  * contentCodeableConcept.text = "Drug Prescribed? (yes|no)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugPrescribed 
* payload[DrugReceived]
  * contentCodeableConcept.text = "Drug Received? (yes|no)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugReceived 
* payload[Asessment]
  * contentCodeableConcept.text = "Asessment? (0|1|2|3|4|5)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#Asessment 

* recipient = Reference(Roberts-Jeb-EO)
