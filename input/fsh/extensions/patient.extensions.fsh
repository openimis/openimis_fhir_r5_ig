Extension: PatientIsHeadExtension
Id:        patient-is-head
Title:    "IsHead (Patient)"
Description: "Whether the Patient is the Head of the Family."
* insert ExtensionContext(Patient)
* value[x] only boolean

Extension: PatientCardIssuedExtension
Id:        patient-card-issued
Title:    "Card Issued (Patient)"
Description: "Whether a card was issued to the Patient during enrolment."
* insert ExtensionContext(Patient)
* value[x] only boolean

Extension: PatientEducationLevelExtension
Id:        patient-education-level
Title:    "Education Level (Patient)"
Description: "Specifies the Patient's education level"
* insert ExtensionContext(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from PatientEducationLevelVS (extensible)

Extension: PatientProfessionExtension
Id:        patient-profession
Title:    "Profession (Patient)"
Description: "Specifies the Patient's profession"
* insert ExtensionContext(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from PatientProfessionVS (extensible)

Extension: PatientIdentificationExtension
Id:        patient-identification
Title:     "Radiotherapy Dose Delivered"
Description: "Dose delivered to a body structure divided into a number of fractional doses. This extension is used on Procedure resource."
* insert ExtensionContext(Patient)
* extension contains
    number 1..1 MS and
    type 0..1 MS 
* extension[number].value[x] only string
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from PatientIdentificationTypesVS (extensible)

