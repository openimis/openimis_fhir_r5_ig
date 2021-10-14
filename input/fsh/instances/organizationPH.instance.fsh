Instance: MyTradePolicyHolder
InstanceOf: OpenIMISPolicyHolderOrganization
Description: "Example of openIMIS PolicyHolder"
* identifier[Code].value = "1234"
* identifier[Code].type = OpenIMISIdentifierCS#Code
* identifier[UUID].value = "4c87928a-cf9c-4f4b-aeeb-61041c84547f"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID
* type = OrganizationTypeCS#bus
* name = "My Trade"
* telecom[email]
  * system = FHIRContactPointSystemCS#email 
  * value = "contact@mytrade.org"
* telecom[phone]
  * system = FHIRContactPointSystemCS#phone
  * value = "0102030405"
* telecom[fax]
  * system = FHIRContactPointSystemCS#fax
  * value = "0102030450"
* address
  * line = "54 Pasay"
  * state = "Ultha"
  * district = "Rapta"
  * extension[municipality].valueString = "Jamu"
  * city = "Jamula"
  * extension[location].valueReference = Reference(Jamula-village)
* contact 
  * name 
    * text = "John Doe"
* extension[legalForm].valueCodeableConcept = OrganizationPHLegalFormCS#1 "Personal Company"
* extension[activity].valueCodeableConcept = OrganizationPHActivityCS#2 "Industry"
