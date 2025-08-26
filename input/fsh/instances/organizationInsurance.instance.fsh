Instance: openIMIS-Implementation
InstanceOf: OpenIMISInsuranceOrganization
Description: "Example of openIMIS Insurance."
* identifier.value = "openIMIS"
* identifier.type = OpenIMISIdentifierCS#Code
* type = OrganizationTypeCS#ins
* name = "openIMIS Implementation"
* contact 
  * name 
    * text = "Manuel D. Medina"
  * telecom[+]
    * system = FHIRContactPointSystemCS#email 
    * value = "implementation@openimis.org"
  * telecom[+]
    * system = FHIRContactPointSystemCS#phone
    * value = "0908060703"
  * telecom[+]
    * system = FHIRContactPointSystemCS#fax
    * value = "0908060730"
  * address
    * line = "1 Pasay"
    * state = "Ultha"
    * district = "Rapta"
    * extension[municipality].valueString = "Jamu"
    * city = "Jamula"

