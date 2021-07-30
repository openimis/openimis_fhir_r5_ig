// This is the profile for openIMIS Practitioner 
// Mapping is done throught Enrolment Officer openIMIS entities
Instance: Roberts-Jeb-EO
InstanceOf: OpenIMISEnrolmentOfficerPractitioner
Description: "Example of openIMIS Practitioner for Enrolment Officer."

* identifier[Code].type = OpenIMISIdentifierCS#Code // it is mapped to CHFID
* identifier[Code].value = "E00001" // it is mapped to CHFID
* identifier[UUID].type = OpenIMISIdentifierCS#UUID
* identifier[UUID].value = "e5256c97-8b06-4c8e-96db-d8294b4619a8"

* name 
  * family = "Roberts"
  * given = "Jeb"
  * use = FHIRNameUseCS#official

* birthDate = "1980-01-15"
* qualification 
  * code = PractitionerQualificationTypeCS#EO "Enrolment Officer"
