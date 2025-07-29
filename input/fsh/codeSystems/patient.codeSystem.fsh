CodeSystem: PatientContactRelationshipCS
Id: patient-contact-relationship
Title: "Contact Relationship (Patient)"
Description: "Indicates the Relationship of a Patient with the Head of the Family. Values defined by openIMIS."
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
Title: "Education Level (Patient)"
Description: "Indicates the Education level of a Patient. Values defined by openIMIS. Can be extended."
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
Title: "Profession (Patient)"
Description: "Indicates the profession of a Patient. Values defined by openIMIS. Can be extended."
* #1 "Housewife"
* #2 "Employee"
* #3 "Self Employee"
* #4 "Other"

CodeSystem: PatientIdentificationTypeCS
Id: patient-identification-type
Title: "Identification Type (Patient)"
Description: "Indicates the type of document the Patient used to identify himself. Values defined by openIMIS. Can be extended."
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/CodeSystem-patient-identification-types"
* #D "Driver's License"
* #N "National ID"
* #P "Passport"
* #V "Voter Card"