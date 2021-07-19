Extension: OrganizationLegalFormExtension
Id:        organization-legal-form
Title:    "Legal Forms (Organization)"
Description: "Indicates the legal forms of the Organization. "
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/StructureDefinition-organization-legal-form"
* insert ExtensionContext(OpenIMISHealthFacilityOrganization)
* value[x] only CodeableConcept
* valueCodeableConcept from OrganizationLegalFormVS (extensible)

Extension: OrganizationHFLevelExtension
Id:        organization-hf-level
Title:    "Health Facility Level (Organization)"
Description: "Indicates the level of the Health Facility (Organization)."
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/StructureDefinition-organization-hf-level"
* insert ExtensionContext(OpenIMISHealthFacilityOrganization)
* value[x] only CodeableConcept
* valueCodeableConcept from OrganizationHFLevelVS (extensible)

