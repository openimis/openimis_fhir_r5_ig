ValueSet: ContractStatusCodesVS
Id: contract-status-codes
Title: "Status Codes (Contract)"
Description: "Indicates the status of the Contract. Values limited by openIMIS."
* FHIRContractResourceStatusCodes#offered "Offered"
* FHIRContractResourceStatusCodes#executed "Executed"

ValueSet: ContractScopeVS
Id: contract-scope
Title: "Scope (Contract)"
Description: "Indicates the scope for the Contract. Values defined by openIMIS. Cannot be extended."
* codes from system ContractScopeCS

ValueSet: ContractResourcePartyRoleVS
Id: contract-resource-party-role
Title: "Resource Party Role (Contract)"
Description: "Indicates the participant engagement type for the Contract term."
* codes from system ContractResourcePartyRoleCS

ValueSet: ContractPremiumPayerVS
Id: contract-premium-payer
Title: "Premium Payer (Contract)"
Description: "Indicates the payer of the premium for the Contract. Can be extended in openIMIS. Need to match openIMIS database payer list."
* codes from system ContractPremiumPayerCS

ValueSet: ContractPremiumCategoryVS
Id: contract-premium-category
Title: "Premium Category (Contract)"
Description: "Indicates the category of the premium for the Contract. Cannot be extended."
* codes from system ContractPremiumCategoryCS

ValueSet: ContractPremiumTypeVS
Id: contract-premium-type
Title: "Premium Type (Contract)"
Description: "Indicates the type of the premium for the Contract. Cannot be extended."
* codes from system ContractPremiumTypeCS
