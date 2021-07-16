ValueSet: OpenIMISIdentifierVS
Id: openimis-identifiers-vs
Title: "openIMIS Identifiers Value Set"
Description: "Indicates the Identifier type"
* OpenIMISIdentifierCS#UUID  
* OpenIMISIdentifierCS#DBID  
* OpenIMISIdentifierCS#Code  

ValueSet: PatientMaritalStatusVS
Id: patient-marital-status-vs
Title: "Patient Marital Status Value Set"
Description: "Indicates the Marital status of a Patient"
* FHIRMaritalStatusCS#M "Married"
* FHIRMaritalStatusCS#S "Single"
* FHIRMaritalStatusCS#D "Divorced"
* FHIRMaritalStatusCS#W "Widowed"
* FHIRMaritalStatusCS#UNK "unknown"

ValueSet: PatientContactRelationshipVS
Id: patient-contact-relationship-vs
Title: "Patient Contact Relationship Value Set"
Description: "Indicates the Relationship of a Patient with the Head of the Family."
* codes from system PatientContactRelationshipCS

ValueSet: PatientEducationLevelVS
Id: patient-education-level-vs
Title: "Patient Education Level Value Set"
Description: "Indicates the Education level of a Patient"
* codes from system PatientEducationLevelCS

ValueSet: PatientProfessionVS
Id: patient-profession-vs
Title: "Patient Profession Value Set"
Description: "Indicates the profession of a Patient"
* codes from system PatientProfessionCS