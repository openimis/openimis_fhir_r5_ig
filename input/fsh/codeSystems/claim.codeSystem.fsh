CodeSystem: ClaimSupportingInfoCategoryCS
Id: claim-supporting-info-category
Title: "Category of the supporting info (Claim)"
Description: "Indicates the category for the supportiong info under a Claim. Values defined by openIMIS. Can not be extended."
* #explanation "Explanation"
* #justification "Justification"
* #attachment "Attachment"
* #guarantee "Guarantee"

CodeSystem: ClaimItemCategoryCS
Id: claim-item-category
Title: "Category of the item (Claim)"
Description: "Indicates the category for the item under a Claim. Values defined by openIMIS. Can not be extended."
* #item "Item"
* #service "Service"

CodeSystem: ClaimStatusCS
Id: claim-status
Title: "Status of the claim (Claim|ClaimResponse)"
Description: "Indicates the status of the Claim. Values defined by openIMIS. Can not be extended."
* #1 "Rejected"
* #2 "Entered"
* #4 "Checked"
* #8 "Processed"
* #16 "Valuated"

CodeSystem: ClaimVisitTypeCS
Id: claim-visit-type
Title: "Visit Type (Claim)"
Description: """Indicates the visit type of the Claim. 
Values limited by openIMIS."""
* #E "Emergency"
* #R "Referrals"
* #O "Other"