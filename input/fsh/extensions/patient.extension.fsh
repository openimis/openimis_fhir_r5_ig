Extension: PatientGroupReference
Id:        patient-group-reference
Title:    "Group Reference (Patient)"
Description: "The reference to the Group/Family the Patient/Insuree is part of."
* insert ExtensionContext(Patient)
* value[x] only Reference(OpenIMISGroup)

Extension: PatientIsHeadExtension
Id:        patient-is-head
Title:    "IsHead (Patient)"
Description: "Whether the Patient/Insuree is the Head of the Family."
* insert ExtensionContext(Patient)
* value[x] only boolean

Extension: PatientVulnerabilityStatusExtension
Id:        patient-vulnerability-status
Title:    "Vulnerability Status (Patient)"
Description: "Whether the Patient/Insuree has the vulnerability status."
* insert ExtensionContext(Patient)
* value[x] only boolean

Extension: PatientCardIssuedExtension
Id:        patient-card-issued
Title:    "Card Issued (Patient)"
Description: "Whether a card was issued to the Patient/Insuree during enrolment."
* insert ExtensionContext(Patient)
* value[x] only boolean

Extension: PatientEducationLevelExtension
Id:        patient-education-level
Title:    "Education Level (Patient)"
Description: "Specifies the Patient/Insuree's education level"
* insert ExtensionContext(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from PatientEducationLevelVS (extensible)

Extension: PatientProfessionExtension
Id:        patient-profession
Title:    "Profession (Patient)"
Description: "Specifies the Patient/Insuree's profession"
* insert ExtensionContext(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from PatientProfessionVS (extensible)

Extension: PatientIdentificationExtension
Id:        patient-identification
Title:     "Identification (Patient)"
Description: "Specifies the Patient/Insuree official identification and the type of identification document."
* insert ExtensionContext(Patient)
* extension contains
    number 1..1 MS and
    type 0..1 MS 
* extension[number].value[x] only string
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from PatientIdentificationTypesVS (extensible)

