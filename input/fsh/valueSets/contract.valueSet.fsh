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