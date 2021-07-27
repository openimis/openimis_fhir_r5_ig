Extension: InsurancePlanStartCycleExtension 
Id:        insurance-plan-start-cycle
Title:    "Cycle Start (InsurancePlan)"
Description: "Defines the starting date for a new cycle in InsurancePlan."
* insert ExtensionContext(OpenIMISInsurancePlan)
* value[x] only string

Extension: InsurancePlanMaxInstallmentsExtension 
Id:        insurance-plan-max-installments
Title:    "Max Installments (InsurancePlan)"
Description: "Maximal number of instalments in which contributions for a policy may be paid."
* value[x] only unsignedInt
* valueUnsignedInt 1..1

Extension: InsurancePlanPeriodExtension 
Id:        insurance-plan-period
Title:    "Period (InsurancePlan)"
Description: "Defines the number of months a certain period is valid in InsurancePlan."
* insert ExtensionContext(OpenIMISInsurancePlan)
* value[x] only Quantity
* valueQuantity
  * value 1..1
  * unit = "months"

Extension: InsurancePlanDiscountExtension 
Id:        insurance-plan-discount
Title:    "Discount (InsurancePlan)"
Description: "Defines the discount to be applied for enrolment and renewal in InsurancePlan."
* insert ExtensionContext(OpenIMISInsurancePlan)
* extension contains
    Percentage 0..1 and
    Period 0..1 
* extension[Percentage]
  * value[x] only decimal
  * valueDecimal
    * ^short = "Discount Percentage"
    * ^definition = "Percentage to be discounted from the policy price."
* extension[Period]
  * value[x] only Quantity
  * valueQuantity
    * value 1..1
    * unit = "months"    
    * ^short = "Discount Period"
    * ^definition = "Number of months to be discounted from the policy price."

Extension: InsurancePlanConversionExtension
Id:        insurance-plan-conversion
Title:    "Conversion Product (InsurancePlan)"
Description: "Reference to the product which replaces the current product in case of renewal after the period end."
* insert ExtensionContext(OpenIMISInsurancePlan)
* value[x] only Reference(OpenIMISInsurancePlan)
