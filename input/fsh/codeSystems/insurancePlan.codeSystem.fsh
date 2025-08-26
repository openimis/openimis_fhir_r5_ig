CodeSystem: InsurancePlanCoverageBenefitLimitCS
Id: insurance-plan-coverage-benefit-limit
Title: "Coverage Benefit Limit Types (InsurancePlan)"
Description: "Indicates the Coverage Benefit Limit Types for an InsurancePlan. Values defined by openIMIS. Can not be extended."
* #period "Period" "Duration of the period in months, in which a policy with the product will be valid."
* #memberCount "Member Count" "Maximal number of members of a household/group for the product."

CodeSystem: InsurancePlanGeneralCostTypeCS
Id: insurance-plan-general-cost-type
Title: "General Cost Type (InsurancePlan)"
Description: "Indicates the General Cost Type for an InsurancePlan. Values defined by openIMIS. Can not be extended."
* #lumpsum "Lumpsum"
* #premiumAdult "Premium Adult"
* #premiumChild "Premium Child"
* #registrationLumpsum "Registration Lumpsum"
* #registrationFee "Registration Fee"
* #generalAssemblyLumpSum "General Assembly Lump Sum"
* #generalAssemblyFee "General Assembly Fee"

// Codes for the kind of period
CodeSystem: InsurancePlanPeriodKindCS
Id: insurance-plan-period-kind
Title: "InsurancePlan Period Kind"
* #administration "Administration"
* #grace-payment "Grace (Payment)"
* #grace-renewal "Grace (Renewal)"
* #grace-enrolment "Grace (Enrolment)"

// Codes to label the discount
CodeSystem: InsurancePlanDiscountKindCS
Id: insurance-plan-discount-kind
* #renewal "Renewal discount"
* #enrolment "Enrolment discount"