Extension: UnitPriceExtension
Id: unit-price
Title: "Unit Price (Medication|ActivityDefinition)"
Description: "The unit price for a Medication or ActivityDefinition."
* insert ExtensionContext(OpenIMISMedication)
* insert ExtensionContext(OpenIMISActivityDefinition)
* insert ExtensionContext(OpenIMISInvoice)
* insert ExtensionContext(ActivityDefinition)
* value[x] only Money
* valueMoney 
  * value 1..1 

