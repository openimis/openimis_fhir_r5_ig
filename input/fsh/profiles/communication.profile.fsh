// This is the profile for openIMIS CommunicationRequest 
// Mapping is done throught Claim openIMIS entity
Profile: OpenIMISCommunication
Parent: Communication
Id: openimis-communication
Title: "openIMIS Communication"
Description: "Defines a Communication for openIMIS which maps to the Feedback in openIMIS."

* identifier 0..0 
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* partOf 0..0
* inResponseTo 0..0

* status = FHIREventStatus#completed "Completed"

* statusReason 0..0
* category 0..0 // can be used later if other communications requests are defined 
* priority 0..0
* medium 0..0

* subject 1..1
* subject only Reference(OpenIMISPatient)

* topic 0..0

* about 1..1
* about only Reference(OpenIMISClaim)

* encounter 0..0
* sent 0..0
* received 0..0
* recipient 0..0
* sender 0..0
// * reasonCode 0..0 // REMOVED: in R5
// * reasonReference 0..0 // REMOVED: in R5
* reason 0..0

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
    Asessment 1..1

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

* payload[Asessment]
  * content[x] only CodeableConcept
  * contentCodeableConcept.coding.code = #Asessment
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#Asessment 


* note 0..0

