Extension: GroupPovertyStatusExtension
Id:        group-poverty-status
Title:    "Poverty Status (Group)"
Description: "Whether the Group has the poverty status."
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/StructureDefinition-group-poverty-status"
* insert ExtensionContext(Group)
* value[x] only boolean

Extension: GroupAddressExtension
Id:        group-address
Title:    "Poverty Status (Group)"
Description: "Whether the Group has the poverty status."
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/StructureDefinition-group-address"
* insert ExtensionContext(Group)
* value[x] only Address

Extension: GroupTypeExtension
Id:        group-type
Title:    "Group Type (Group)"
Description: "Indicates the type of the Group. Values defined by openIMIS. Can be extended."
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/StructureDefinition-group-type"
* insert ExtensionContext(Group)
* value[x] only CodeableConcept
* valueCodeableConcept from GroupTypesVS (extensible)
