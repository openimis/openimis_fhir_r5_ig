// This is the profile for openIMIS Invoice 
// Mapping is done throught Invoice openIMIS entities
Instance: InformalSectorContributionInvoice
InstanceOf: OpenIMISInvoice
Description: "Example of an Invoice covering the contribution payment by a family under Informal Sector scheme."

* identifier[Code].type.coding.code = OpenIMISIdentifierCS#Code 
* identifier[Code].value = "IV-BCUL0001-13000001-2021-09"
* identifier[UUID].type.coding.code = OpenIMISIdentifierCS#UUID
* identifier[UUID].value = "D33E703F-D10B-43D8-9578-5137C118AD84"

* status = FHIRInvoiceStatus#issued "Issued"
* type.coding.code = InvoiceTypeCS#contribution "Contribution"
* recipient = Reference(jane-doe)

* date = "2021-01-28"

* issuer = Reference(openIMIS-Implementation)

* lineItem[+]
  * chargeItemCodeableConcept = InvoiceChargeItemCS#policy "Policy"
  * priceComponent[+]
    * type = FHIRInvoicePriceComponentType#base "base price"
    * code 
      * coding.code = OpenIMISIdentifierCS#Code
      * text = "BCUL0001" 
    * factor = 1.0
    * amount 
      * value = 10000

    * extension[unitPrice]
      * valueMoney 
        * value = 10000

* totalNet
  * value = 10000
  * currency = CurrencyCode#EUR "Euro"

* totalGross 
  * value = 10000
  * currency = CurrencyCode#EUR "Euro"

