// This is the profile for openIMIS CommunicationRequest 
// Mapping is done throught Claim openIMIS entity
Profile: OpenIMISCommunicationRequest
Parent: CommunicationRequest
Id: openimis-communication-request
Title: "openIMIS CommunicationRequest"
Description: "Defines a CommunicationRequest for openIMIS which maps to the Claim request for feedback in openIMIS."

* identifier 0..0 
* basedOn 0..0
* replaces 0..0
* groupIdentifier 0..0

* status from CommunicationRequestStatusVS (required)
  * ^short = "active | completed | revoked"
  * ^definition = """Coverage Status:
  * active: claim feedback selected
  * completed: claim feedback delivered
  * revoked: claim feedback bypassed"""

* statusReason 1..1
* statusReason from FeedbackStatusVS (required)

* category 0..0 // can be used later if other communications requests are defined 
* priority 0..0
* doNotPerform 0..0
* medium 0..0

* subject 1..1
* subject only Reference(OpenIMISPatient)

* about 1..1
* about only Reference(OpenIMISClaim)

* encounter 0..0

* payload  5..5
  * content[x] only CodeableConcept
  * extension contains CommunicationPayloadTypeExtension named type 1..1 
* payload ^slicing.discriminator.type = #value
* payload ^slicing.discriminator.path = "extension[type].valueCodeableConcept.coding.code"
* payload ^slicing.rules = #closed
* payload contains
    CareRendered 1..1 and
    PaymentAsked 1..1 and
    DrugPrescribed 1..1 and
    DrugReceived 1..1 and
    Asessment 1..1
* payload[CareRendered]
  * content[x] only CodeableConcept
  * contentCodeableConcept.text = "Care Rendered? (yes|no)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#CareRendered 
* payload[PaymentAsked]
  * content[x] only CodeableConcept
  * contentCodeableConcept.text = "Payment Asked? (yes|no)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#PaymentAsked 
* payload[DrugPrescribed]
  * content[x] only CodeableConcept
  * contentCodeableConcept.text = "Drug Prescribed? (yes|no)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugPrescribed 
* payload[DrugReceived]
  * content[x] only CodeableConcept
  * contentCodeableConcept.text = "Drug Received? (yes|no)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#DrugReceived 
* payload[Asessment]
  * content[x] only CodeableConcept
  * contentCodeableConcept.text = "Asessment? (0|1|2|3|4|5)"
  * extension[type].valueCodeableConcept = FeedbackPayloadCS#Asessment 

* occurrence[x] 0..0
* authoredOn 0..0
* requester 0..0

* recipient 1..1
* recipient only Reference(OpenIMISEnrolmentOfficerPractitioner)
  * ^short = "Enrolment Officer"
  * ^definition = "Enrolment Officer having enroled the insuree."

* informationProvider 0..0 // RENAMED: sender is renamed to informationProvider in R5
// * reasonCode 0..0 // REMOVED: in R5
// * reasonReference 0..0 // REMOVED; in R5
* reason 0..0
* note 0..0

