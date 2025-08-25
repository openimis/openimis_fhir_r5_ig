Extension: OrganizationHFLegalFormExtension
Id:        organization-hf-legal-form
Title:    "Legal Forms (Organization)"
Description: "Indicates the legal forms of the Health Facility Organization. "
* insert ExtensionContext(OpenIMISHealthFacilityOrganization)
* insert ExtensionContext(Organization)
* value[x] only CodeableConcept
* valueCodeableConcept from OrganizationHFLegalFormVS (example)

Extension: OrganizationHFLevelExtension
Id:        organization-hf-level
Title:    "Health Facility Level (Organization)"
Description: "Indicates the level of the Health Facility (Organization)."
* insert ExtensionContext(OpenIMISHealthFacilityOrganization)
* insert ExtensionContext(Organization)
* value[x] only CodeableConcept
* valueCodeableConcept from OrganizationHFLevelVS (required)

Extension: OrganizationHFCareTypeExtension
Id: organization-hf-care-type
Title: "Health Facility Care Type (Organization)"
Description: "Indicates the care type of the Health Facility (Organization)."
* insert ExtensionContext(OpenIMISHealthFacilityOrganization)
* insert ExtensionContext(Organization)
* value[x] only CodeableConcept
* valueCodeableConcept from OrganizationHFCareTypeVS (required)

Extension: OrganizationPHLegalFormExtension
Id:        organization-ph-legal-form
Title:    "Legal Forms (Organization)"
Description: "Indicates the legal forms of the PolicyHolder Organization. "
* insert ExtensionContext(OpenIMISPolicyHolderOrganization)
* insert ExtensionContext(Organization)
* value[x] only CodeableConcept
* valueCodeableConcept from OrganizationPHLegalFormVS (example)

Extension: OrganizationPHActivityExtension
Id: organization-ph-activity
Title: "Activity (Organization)"
Description: "Indicates the activity of the PolicyHolder Organization. Values defined by openIMIS. Can be extended."
* insert ExtensionContext(OpenIMISPolicyHolderOrganization)
* insert ExtensionContext(Organization)
* value[x] only CodeableConcept
* valueCodeableConcept from OrganizationPHActivityVS (example)
