ValueSet: PatientMaritalStatusVS
Id: patient-marital-status
Title: "Marital Status (Patient)"
Description: "Indicates the Marital status of a Patient"
* FHIRMaritalStatusCS#M "Married"
* FHIRMaritalStatusCS#S "Single"
* FHIRMaritalStatusCS#D "Divorced"
* FHIRMaritalStatusCS#W "Widowed"
* FHIRMaritalStatusCS#UNK "unknown"

ValueSet: PatientContactRelationshipVS
Id: patient-contact-relationship
Title: "Contact Relationship (Patient)"
Description: "Indicates the Relationship of a Patient with the Head of the Family."
* codes from system PatientContactRelationshipCS

ValueSet: PatientEducationLevelVS
Id: patient-education-level
Title: "Education Level (Patient)"
Description: "Indicates the Education level of a Patient"
* codes from system PatientEducationLevelCS

ValueSet: PatientProfessionVS
Id: patient-profession
Title: "Profession (Patient)"
Description: "Indicates the profession of a Patient"
* codes from system PatientProfessionCS

ValueSet: PatientIdentificationTypeVS
Id: patient-identification-type
Title: "Identification Type (Patient)"
Description: "Indicates the type of document the Patient used to identify himself."
* codes from system PatientIdentificationTypeCS