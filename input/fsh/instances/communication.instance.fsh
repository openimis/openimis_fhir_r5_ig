// This is the profile for openIMIS Contract 
// Only for POST 
Instance: Claim001Communication
InstanceOf: OpenIMISCommunication
Description: """
            * Example of a Communication (Feedback)  
            """

* status = FHIREventStatus#completed "Completed"

* subject = Reference(john-doe)

* about = Reference(Claim001)

* payload[CareRendered]
  * contentCodeableConcept = FeedbackPayloadCS#CareRendered 
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#CareRendered 
* payload[PaymentAsked]
  * contentCodeableConcept = FeedbackPayloadCS#PaymentAsked 
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#PaymentAsked 
* payload[DrugPrescribed]
  * contentCodeableConcept = FeedbackPayloadCS#DrugPrescribed 
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugPrescribed 
* payload[DrugReceived]
  * contentCodeableConcept = FeedbackPayloadCS#DrugReceived 
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugReceived 
* payload[Asessment]
  * contentCodeableConcept = FeedbackPayloadCS#Asessment 
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#Asessment 
