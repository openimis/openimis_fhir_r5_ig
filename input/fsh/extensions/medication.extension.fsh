Extension: MedicationUnitPriceExtension
Id:        medication-unit-price
Title:    "Unit Price (Medication)"
Description: "The unit price for a Medication."
* insert ExtensionContext(Medication)
* value[x] only Money
* valueMoney 
  * value 1..1 

Extension: MedicationFrequencyExtension
Id:        medication-frequency
Title:    "Frequency (Medication)"
Description: "The frequency a Medication can be prescribed."
* insert ExtensionContext(Medication)
* value[x] only integer