
Extension: ContractPremiumExtension
Id:        contract-premium
Title:    "Premium (Contract)"
Description: "Indicates a premium for a Contract. This is a complex extension. "
* ^context[+].type = #element
* ^context[=].expression = "Contract.term.asset"
* extension contains
    payer 0..1 MS and
    category 1..1 MS and
    amount 1..1 MS and
    receipt 1..1 and
    date 1..1 and 
    type 1..1
* extension[payer] 
  * value[x] only CodeableConcept
  * valueCodeableConcept from ContractPremiumPayerVS (extensible)
  * ^short = "Premium payer"
  * ^definition = "Specifies who paid for the premium."
* extension[category]
  * value[x] only CodeableConcept
  * valueCodeableConcept from ContractPremiumCategoryVS (required)
  * ^short = "Premium category"
  * ^definition = "Specifies the premium category."
* extension[amount]
  * value[x] only Money
  * valueMoney
    * value 1..1
  * ^short = "Premium amount"
  * ^definition = "Specifies hoq much has been paid for the premium."
* extension[receipt]
  * value[x] only string
  * ^short = "Premium receipt"
  * ^definition = "Specifies the premium receipt."
* extension[date]
  * value[x] only date
  * ^short = "Premium payment date"
  * ^definition = "Specifies when the premium has been paid."
* extension[type]
  * value[x] only CodeableConcept
  * valueCodeableConcept from ContractPremiumTypeVS (required)
  * ^short = "Premium payment type"
  * ^definition = "Specifies the payment type for the premium."


