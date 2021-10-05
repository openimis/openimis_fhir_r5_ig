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
  * contentString = "yes"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#CareRendered 
* payload[PaymentAsked]
  * contentString = "no"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#PaymentAsked 
* payload[DrugPrescribed]
  * contentString = "yes"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugPrescribed 
* payload[DrugReceived]
  * contentString = "yes"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugReceived 
* payload[Asessment]
  * contentString = "4"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#Asessment 
