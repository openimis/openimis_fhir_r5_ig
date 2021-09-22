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

CodeSystem: ClaimRejectionReasonsCS
Id: claim-rejection-reasons
Title: "Rejection Reasons (Claim)"
Description: """Indicates the rejection reason of an item from a Claim. 
Values limited by openIMIS."""
* #-1 "REJECTED BY MEDICAL OFFICER"
* #0 "ACCEPTED"
* #1 "INVALID ITEM OR SERVICE"
* #2 "NOT IN PRICE LIST"
* #3 "NO PRODUCT FOUND"
* #4 "CATEGORY LIMITATION"
* #5 "FREQUENCY FAILURE"
* #6 "DUPLICATED"
* #7 "FAMILY"
* #8 "DIAGNOSIS NOT IN LIST"
* #9 "TARGET DATE"
* #10 "CARE TYPE"
* #11 "MAX HOSPITAL ADMISSIONS"
* #12 "MAX VISITS"
* #13 "MAX CONSULTATIONS"
* #14 "MAX SURGERIES"
* #15 "MAX DELIVERIES"
* #16 "QTY OVER LIMIT"
* #17 "WAITING PERIOD FAIL"
* #19 "MAX ANTENATAL"
