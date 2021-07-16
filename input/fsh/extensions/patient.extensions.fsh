Extension: PatientIsHeadExtension
Id:        patient-is-head-extension
Title:    "Patient Is Head of the Family"
Description: "Whether the Patient is the Head of the Family"
* insert ExtensionContext(Patient)
* value[x] only boolean

Extension: PatientEducationLevelExtension
Id:        patient-education-level-extension
Title:    "Patient Education Level"
Description: "Specifies the Patient's education level"
* insert ExtensionContext(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from PatientEducationLevelVS (extensible)

Extension: PatientProfessionExtension
Id:        patient-profession-extension
Title:    "Patient Profession"
Description: "Specifies the Patient's profession"
* insert ExtensionContext(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from PatientProfessionVS (extensible)

