Instance: AspirinMedication
InstanceOf: OpenIMISHealthFacilityOrganization
Description: "Example of openIMIS Health Facility"
* identifier[HFCode].value = "RAHOS001"
* identifier[HFCode].type = OpenIMISIdentifierCS#Code
* identifier[HFUUID].value = "D8A25F21-F36A-4D4D-9E58-1DB8FFBE7036"
* identifier[HFUUID].type = OpenIMISIdentifierCS#UUID
* type = OrganizationTypeCS#prov
* name = "Rapta District Hospital"
* address[0]
  * type = AddressType#physical
  * state = "Ultha"
  * district = "Rapta"
  * extension[locationDistrict].valueReference = Reference(Jimara-district)
* extension[legalForm].valueCodeableConcept = OrganizationLegalFormCS#D "District organization"