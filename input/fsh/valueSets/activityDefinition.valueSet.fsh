ValueSet: ActivityDefinitionUsageContextTypeVS
Id: activity-definition-usage-context-type
Title: "Usage Context Type (ActivityDefinition)"
Description: "Indicates the Usage Context Type for an ActivityDefinition."
* UsageContextTypeCS#gender "Gender"
* UsageContextTypeCS#age "Age Range"
* UsageContextTypeCS#workflow "Workflow Setting"
* UsageContextTypeCS#venue "Clinical Venue"

ValueSet: ActivityDefinitionUsageContextWorkflowTypeVS
Id: activity-definition-usage-context-workflow-type
Title: "Usage Context for Workflow Type (ActivityDefinition)"
Description: "Indicates the Usage Context for Workflow Type for an ActivityDefinition. Values defined by openIMIS. Can not be extended."
* codes from system ActivityDefinitionUsageContextWorkflowTypeCS

ValueSet: ActivityDefinitionUsageContextVenueTypeVS
Id: activity-definition-usage-context-venue-type
Title: "Usage Context for Venue Type (ActivityDefinition)"
Description: "Indicates the Usage Context for Venue Type for an ActivityDefinition."
* FHIRActCodeCS#AMB "ambulatory"
* FHIRActCodeCS#IMP "IMP"

ValueSet: ActivityDefinitionServiceTypeVS
Id: activity-definition-service-type
Title: "Service Type (ActivityDefinition)"
Description: "Indicates the Service Type for an ActivityDefinition. Values defined by openIMIS. Can not be extended."
* codes from system ActivityDefinitionServiceTypeCS

ValueSet: ActivityDefinitionLevelVS
Id: activity-definition-level
Title: "Level (ActivityDefinition)"
Description: "Indicates the Level for an ActivityDefinition. Values defined by openIMIS. Can not be extended."
* codes from system ActivityDefinitionLevelCS