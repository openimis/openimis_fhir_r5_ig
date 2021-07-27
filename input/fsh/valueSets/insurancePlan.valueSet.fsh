ValueSet: InsurancePlanPublicationStatusVS
Id: insurance-plan-publication-status
Title: "Publication Status (InsurancePlan)"
Description: "Indicates the Publication Status for an InsurancePlan."
* FHIRPublicationStatusCS#draft "Draft"
* FHIRPublicationStatusCS#active "Active"
* FHIRPublicationStatusCS#retired "Retired"

ValueSet: InsurancePlanCoverageTypeVS
Id: insurance-plan-coverage-type
Title: "Coverage Type (InsurancePlan)"
Description: "Indicates the Coverage Type for an InsurancePlan."
* FHIRInsurancePlanTypeCS#medical "Medical"

ValueSet: InsurancePlanCoverageBenefitLimitVS
Id: insurance-plan-coverage-benefit-limit
Title: "Coverage Benefit Limit Types (InsurancePlan)"
Description: "Indicates the Coverage Benefit Limit Types for an InsurancePlan. Values defined by openIMIS. Can not be extended."
* codes from system InsurancePlanCoverageBenefitLimitCS

ValueSet: InsurancePlanGeneralCostTypeVS
Id: insurance-plan-general-cost-type
Title: "General Cost Type (InsurancePlan)"
Description: "Indicates the General Cost Type for an InsurancePlan. Values defined by openIMIS. Can not be extended."
* codes from system InsurancePlanGeneralCostTypeCS
