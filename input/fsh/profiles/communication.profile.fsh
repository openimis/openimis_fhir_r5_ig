// This is the profile for openIMIS CommunicationRequest 
// Mapping is done throught Claim openIMIS entity
Profile: OpenIMISCommunication
Parent: Communication
Id: openimis-communication
Title: "openIMIS Communication"
Description: "Defines a Communication for openIMIS which maps to the Feedback in openIMIS."


* status = FHIREventStatus#completed "Completed"

* subject 1..1
* subject only Reference(OpenIMISPatient)

* about 1..1
* about only Reference(OpenIMISClaim)


* payload 5..5
  * content[x] only CodeableConcept
  * extension contains CommunicationPayloadTypeExtension named type 1..1

* payload ^slicing.discriminator.type = #value
* payload ^slicing.discriminator.path = "content.coding.code"
* payload ^slicing.rules = #closed

* payload contains
    CareRendered 1..1 and
    PaymentAsked 1..1 and
    DrugPrescribed 1..1 and
    DrugReceived 1..1 and
    assessment 1..1

* payload[CareRendered]
  * content[x] only CodeableConcept  
  * contentCodeableConcept.coding.code = #CareRendered
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#CareRendered 

* payload[PaymentAsked]
  * content[x] only CodeableConcept
  * contentCodeableConcept.coding.code = #PaymentAsked
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#PaymentAsked 

* payload[DrugPrescribed]
  * content[x] only CodeableConcept
  * contentCodeableConcept.coding.code = #DrugPrescribed
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugPrescribed 

* payload[DrugReceived]
  * content[x] only CodeableConcept
  * contentCodeableConcept.coding.code = #DrugReceived
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugReceived 

* payload[assessment]
  * content[x] only CodeableConcept
  * contentCodeableConcept.coding.code = #assessment
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#assessment 
