Extension: OrganizationLegalFormExtension
Id:        organization-legal-form
Title:    "Legal Forms (Organization)"
Description: "Indicates the legal forms of the Organization. Values defined by openIMIS. Can be extended."
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/StructureDefinition-organization-legal-form"
* insert ExtensionContext(OpenIMISHealthFacilityOrganization)
* value[x] only CodeableConcept
* valueCodeableConcept from OrganizationLegalFormVS (extensible)

