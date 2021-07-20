ValueSet: PatientMaritalStatusVS
Id: patient-marital-status
Title: "Marital Status (Patient)"
Description: "Indicates the Marital status of a Patient"
//* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/ValueSet-patient-marital-status"
* FHIRMaritalStatusCS#M "Married"
* FHIRMaritalStatusCS#S "Single"
* FHIRMaritalStatusCS#D "Divorced"
* FHIRMaritalStatusCS#W "Widowed"
* FHIRMaritalStatusCS#UNK "unknown"

ValueSet: PatientContactRelationshipVS
Id: patient-contact-relationship
Title: "Contact Relationship (Patient)"
Description: "Indicates the Relationship of a Patient with the Head of the Family."
//* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/ValueSet-patient-contact-relationship"
* codes from system PatientContactRelationshipCS

ValueSet: PatientEducationLevelVS
Id: patient-education-level
Title: "Education Level (Patient)"
Description: "Indicates the Education level of a Patient"
//* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/ValueSet-patient-education-level"
* codes from system PatientEducationLevelCS

ValueSet: PatientProfessionVS
Id: patient-profession
Title: "Patient Profession Value Set"
Description: "Indicates the profession of a Patient"
//* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/ValueSet-patient-profession"
* codes from system PatientProfessionCS

ValueSet: PatientIdentificationTypesVS
Id: patient-identification-types
Title: "Identification Types (Patient)"
Description: "Indicates the type of document the Patient used to identify himself."
//* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/ValueSet-patient-identification-types"
* codes from system PatientIdentificationTypesCS