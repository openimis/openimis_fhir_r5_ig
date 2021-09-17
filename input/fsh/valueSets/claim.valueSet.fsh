ValueSet: ClaimVisitTypeVS
Id: claim-visit-type
Title: "Visit Type Codes (Claim)"
Description: """Indicates the visit type of the Claim. 
Values limited by openIMIS."""
* codes from system ClaimVisitTypeCS

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

ValueSet: ClaimStatusVS
Id: claim-status
Title: "Status of the claim (Claim|ClaimResponse)"
Description: "Indicates the status of the Claim. Values defined by openIMIS. Can not be extended."
* codes from system ClaimStatusCS