Instance: Rushila-Dani-CA
InstanceOf: OpenIMISClaimAdministratorPractitioner
Description: "Example of openIMIS Practitioner for Claim Administrator."
* identifier[Code].value = "JMDP0011"
* identifier[Code].type = OpenIMISIdentifierCS#Code
* identifier[UUID].value = "EBC45DFA-8E42-4A5F-8AB7-7EE4D797D842"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID
* name.family = "Rushila"
* name.given[0] = "Dani"
* telecom[email]
  * system = FHIRContactPointSystemCS#email 
  * value = "rushila.dani@openimis.org"
* birthDate = "1979-10-09"
* qualification
  * code = PractitionerQualificationTypeCS#CA "Claim Administrator"
