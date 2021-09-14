ValueSet: ClaimVisitTypeCodesVS
Id: claim-visit-type-codes
Title: "Visit Type Codes (Claim)"
Description: """Indicates the visit type of the Claim. 
Can be 'institutional' for inpatient claims or 'professional' for outpatient claims. 
Values limited by openIMIS."""
* FHIRClaimTypeCodes#institutional "Institutional"
* FHIRClaimTypeCodes#professional "Professional"

ValueSet: ClaimSupportingInfoCategoryVS
Id: claim-supporting-info-category
Title: "Category of the supporting info (Claim)"
Description: "Indicates the category for the supportiong info under a Claim. Values defined by openIMIS. Can not be extended."
* codes from system ClaimSupportingInfoCategoryCS


ValueSet: ClaimItemCategoryVS
Id: claim-item-category
Title: "Category of the item (Claim)"
Description: "Indicates the category for the item under a Claim. Values defined by openIMIS. Can not be extended."
* codes from system ClaimItemCategoryCS