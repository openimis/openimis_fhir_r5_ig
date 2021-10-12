ValueSet: CoverageStatusVS
Id: coverage-status
Title: "Coverage Status (Coverage)"
Description: "Indicates the status of a Coverage (Policy)."
* FHIRFinancialResourceStatusCodes#active "Active"
* FHIRFinancialResourceStatusCodes#cancelled "Cancelled"
* FHIRFinancialResourceStatusCodes#draft "Draft"


ValueSet: CoverageItemCategoryVS
Id: coverage-item-category
Title: "Category of the item (Coverage)"
Description: "Indicates the category for the item under a Coverage. Values defined by openIMIS. Can not be extended."
* codes from system CoverageItemCategoryCS

ValueSet: CoverageItemCategoryItemServiceVS
Id: coverage-item-category-item-service
Title: "Partial categories of the item (Coverage)"
Description: "Indicates the category for the item, only for medical items and services, under a Coverage. Values defined by openIMIS. Can not be extended."
* CoverageItemCategoryCS#item "Item"
* CoverageItemCategoryCS#service "Service"


ValueSet: CoverageItemBenefitTypeTotalLeftVS
Id: coverage-item-benefit-type-total-left
Title: "Type of benefit as total left (Coverage)"
Description: "Indicates the type of benefit under a Coverage. Values defined by openIMIS. Can not be extended."
* CoverageItemBenefitTypeCS#admissions_left "total_admissions"
* CoverageItemBenefitTypeCS#visits_left "total_visits"
* CoverageItemBenefitTypeCS#consultations_left "total_consultations"
* CoverageItemBenefitTypeCS#surgeries_left "total_surgeries"
* CoverageItemBenefitTypeCS#deliveries_left "total_deliveries"
* CoverageItemBenefitTypeCS#antenatal_left "total_antenatal"

ValueSet: CoverageItemBenefitTypeAmountLeftVS
Id: coverage-item-benefit-type-amount-left
Title: "Type of benefit as amount left (Coverage)"
Description: "Indicates the type of benefit under a Coverage. Values defined by openIMIS. Can not be extended."
* CoverageItemBenefitTypeCS#consultation_amount "consultation_amount"
* CoverageItemBenefitTypeCS#surgery_amount "surgery_amount"
* CoverageItemBenefitTypeCS#delivery_amount "delivery_amount"
* CoverageItemBenefitTypeCS#hospitalization_amount "hospitalization_amount"
* CoverageItemBenefitTypeCS#antenatal_amount "antenatal_amount"
* CoverageItemBenefitTypeCS#hospital_deduction "hospital_deduction"
* CoverageItemBenefitTypeCS#non_hospital_deduction "non_hospital_deduction"
* CoverageItemBenefitTypeCS#hospital_ceiling "hospital_ceiling"
* CoverageItemBenefitTypeCS#non_hospital_ceiling "non_hospital_ceiling"


ValueSet: CoverageItemBenefitTypeItemServiceVS
Id: coverage-item-benefit-type
Title: "Type of benefit (Coverage)"
Description: "Indicates the type of benefit under a Coverage. Values defined by openIMIS. Can not be extended."
* CoverageItemBenefitTypeCS#item_left "Items left"
* CoverageItemBenefitTypeCS#min_date_item "Mininum date"

