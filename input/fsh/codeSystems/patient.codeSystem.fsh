CodeSystem: PatientContactRelationshipCS
Id: patient-contact-relationship
Title: "Patient Contact Relationship code system"
Description: "Indicates the Relationship of a Patient with the Head of the Family. Values defined by openIMIS."
* ^url =  https://openimis.github.io/openimis_fhir_r4_ig/CodeSystem-patient-contact-relationship
* #1 "Brother/Sister"
* #2 "Father/Mother"
* #3 "Uncle/Aunt"
* #4 "Son/Daughter"
* #5 "Grand parents"
* #6 "Employee"
* #7 "Others"
* #8 "Spouse"

CodeSystem: PatientEducationLevelCS
Id: patient-education-level
Title: "Patient Education Level Code System"
Description: "Indicates the Education level of a Patient. Values defined by openIMIS. Can be extended."
* ^url =  https://openimis.github.io/openimis_fhir_r4_ig/CodeSystem-patient-education-level
* #1 "Nursery"
* #2 "Primary school"
* #3 "Secondary school"
* #4 "University"
* #5 "Postgraduate studies"
* #6 "PHD"
* #7 "Other"

// Todo: the code might be replaced by numerical values
CodeSystem: PatientProfessionCS
Id: patient-profession
Title: "Patient Profession Code System"
Description: "Indicates the profession of a Patient. Values defined by openIMIS. Can be extended."
* ^url =  https://openimis.github.io/openimis_fhir_r4_ig/CodeSystem-patient-profession
* #1 "Housewife"
* #2 "Employee"
* #3 "Self Employee"
* #4 "Other"

CodeSystem: PatientIdentificationTypesCS
Id: patient-identification-types
Title: "Identification Types (Patient)"
Description: "Indicates the type of document the Patient used to identify himself. Values defined by openIMIS. Can be extended."
* ^url =  https://openimis.github.io/openimis_fhir_r4_ig/CodeSystem-patient-identification-types
* #D "Driver's License"
* #N "National ID"
* #P "Passport"
* #V "Voter Card"