Instance: Claim001Communication
InstanceOf: OpenIMISCommunication
Description: """
Example of a Communication (Feedback)
"""

* meta.profile = "https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-communication"

* status = FHIREventStatus#completed "Completed"
* subject = Reference(john-doe)
* about = Reference(Claim001)

* payload[CareRendered]
  * contentCodeableConcept = FeedbackPayloadCS#CareRendered
  * extension[+]
    * url = "https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/communication-payload-type"
    * valueCodeableConcept = FeedbackPayloadCS#CareRendered

* payload[PaymentAsked]
  * contentCodeableConcept = FeedbackPayloadCS#PaymentAsked
  * extension[+]
    * url = "https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/communication-payload-type"
    * valueCodeableConcept = FeedbackPayloadCS#PaymentAsked

* payload[DrugPrescribed]
  * contentCodeableConcept = FeedbackPayloadCS#DrugPrescribed
  * extension[+]
    * url = "https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/communication-payload-type"
    * valueCodeableConcept = FeedbackPayloadCS#DrugPrescribed

* payload[DrugReceived]
  * contentCodeableConcept = FeedbackPayloadCS#DrugReceived
  * extension[+]
    * url = "https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/communication-payload-type"
    * valueCodeableConcept = FeedbackPayloadCS#DrugReceived

* payload[Asessment]
  * contentCodeableConcept = FeedbackPayloadCS#Asessment
  * extension[+]
    * url = "https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/communication-payload-type"
    * valueCodeableConcept = FeedbackPayloadCS#Asessment
