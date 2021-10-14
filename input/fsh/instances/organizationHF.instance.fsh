Instance: RaptaDistrictHospital
InstanceOf: OpenIMISHealthFacilityOrganization
Description: "Example of openIMIS Health Facility"
* identifier[Code].value = "RAHOS001"
* identifier[Code].type = OpenIMISIdentifierCS#Code
* identifier[UUID].value = "D8A25F21-F36A-4D4D-9E58-1DB8FFBE7036"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID
* type = OrganizationTypeCS#prov
* name = "Rapta District Hospital"
* address[0]
  * type = FHIRAddressType#physical
  * state = "Ultha"
  * district = "Rapta"
  * extension[locationDistrict].valueReference = Reference(Jimara-district)
* extension[legalForm].valueCodeableConcept = OrganizationHFLegalFormCS#D "District organization"