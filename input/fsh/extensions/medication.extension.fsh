Extension: MedicationUnitPriceExtension
Id:        medication-unit-price
Title:    "Unit Price (Medication)"
Description: "The unit price for a Medication."
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/StructureDefinition-medication-unit-price"
* insert ExtensionContext(Medication)
* value[x] only Money
* valueMoney 
  * value 1..1 

