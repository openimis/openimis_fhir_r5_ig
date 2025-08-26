// ---------------------------------------------
// Start Cycle
// ---------------------------------------------
Extension: InsurancePlanStartCycleExtension
Id:        insurance-plan-start-cycle
Title:     "Cycle Start (InsurancePlan)"
Description: "Defines the starting date for a new cycle in InsurancePlan."
Context:    InsurancePlan
* value[x] only string

// ---------------------------------------------
// Max Installments
// ---------------------------------------------
Extension: InsurancePlanMaxInstallmentsExtension
Id:        insurance-plan-max-installments
Title:     "Max Installments (InsurancePlan)"
Description: "Maximal number of instalments in which contributions for a policy may be paid."
Context:    InsurancePlan
* value[x] only unsignedInt
* valueUnsignedInt 1..1

// ---------------------------------------------
// Period (complex: kind + months)
// ---------------------------------------------
Extension: InsurancePlanPeriodExtension
Id:        insurance-plan-period
Title:     "Period (InsurancePlan)"
Description: "Defines the number of months a certain period is valid in InsurancePlan."
Context:    InsurancePlan
* extension contains
    kind   1..1 and
    months 1..1

* extension[kind]
  * value[x] only code
  * valueCode from InsurancePlanPeriodKindVS (required)

* extension[months]
  * value[x] only Quantity
  * valueQuantity
    * value 1..1
    * system = "http://unitsofmeasure.org"
    * code   = #mo
    * unit   = "months"


// ---------------------------------------------
// Discount (complex: kind + Percentage + Period)
// ---------------------------------------------
Extension: InsurancePlanDiscountExtension
Id:        insurance-plan-discount
Title:     "Discount (InsurancePlan)"
Description: "Defines the discount to be applied for enrolment and renewal in InsurancePlan."
Context:    InsurancePlan
* extension contains
    kind       1..1 and
    Percentage 0..1 and
    Period     0..1

* extension[kind]
  * value[x] only code
  * valueCode from InsurancePlanDiscountKindVS (required)

* extension[Percentage]
  * value[x] only decimal
  * valueDecimal
    * ^short = "Discount Percentage"
    * ^definition = "Percentage to be discounted from the policy price."

* extension[Period]
  * value[x] only Quantity
  * valueQuantity
    * value 1..1
    * system = "http://unitsofmeasure.org"
    * code   = #mo
    * unit   = "months"
    * ^short = "Discount Period"
    * ^definition = "Number of months for which the discount applies."

// ---------------------------------------------
// Conversion (simple reference)
// ---------------------------------------------
Extension: InsurancePlanConversionExtension
Id:        insurance-plan-conversion
Title:     "Conversion Product (InsurancePlan)"
Description: "Reference to the product which replaces the current product in case of renewal after the period end."
Context:    InsurancePlan
* value[x] only Reference(OpenIMISInsurancePlan)
