Extension: PatientIsHeadExtension
Id:        patient-is-head
Title:    "IsHead (Patient)"
Description: "Whether the Patient is the Head of the Family."
* ^url = "https://openimis.github.io/openimis_fhi/ValueSet-patient-is-head"
* insert ExtensionContext(Patient)
* value[x] only boolean

Extension: PatientCardIssuedExtension
Id:        patient-card-issued
Title:    "Card Issued (Patient)"
Description: "Whether a card was issued to the Patient during enrolment."
* ^url = "https://openimis.github.io/openimis_fhi/ValueSet-patient-card-issued"
* insert ExtensionContext(Patient)
* value[x] only boolean

Extension: PatientEducationLevelExtension
Id:        patient-education-level
Title:    "Education Level (Patient)"
Description: "Specifies the Patient's education level"
* ^url = "https://openimis.github.io/openimis_fhi/ValueSet-patient-education-level"
* insert ExtensionContext(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from PatientEducationLevelVS (extensible)

Extension: PatientProfessionExtension
Id:        patient-profession
Title:    "Profession (Patient)"
Description: "Specifies the Patient's profession"
* ^url = "https://openimis.github.io/openimis_fhi/ValueSet-patient-profession"
* insert ExtensionContext(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from PatientProfessionVS (extensible)

Extension: PatientIdentificationExtension
Id:        patient-identification
Title:     "Identification (Patient)"
Description: "Specifies the Patient official identification and the type of identification document."
* ^url = "https://openimis.github.io/openimis_fhi/ValueSet-patient-identification"
* insert ExtensionContext(Patient)
* extension contains
    number 1..1 MS and
    type 0..1 MS 
* extension[number].value[x] only string
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from PatientIdentificationTypesVS (extensible)

