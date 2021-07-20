Instance: AspirinMedication
InstanceOf: OpenIMISMedication
Description: "Example of openIMIS Medication"
* identifier[MedicationCode].value = "0001"
* identifier[MedicationCode].type = OpenIMISIdentifierCS#Code
* identifier[MedicationUUID].value = "71EFB78B-64EE-4A68-BE29-87DAF566EB20"
* identifier[MedicationUUID].type = OpenIMISIdentifierCS#UUID
* code = SNOMEDCTMedicationCodes#7947003 
  * text = "ACETYLSALICYLIC ACID (ASPIRIN) TABS 300MG"
* form = SNOMEDCTFormCodes#385055001 "Tablet"
* amount 
  * numerator
    * value = 1000.00
* extension[unitPrice].valueMoney
  * value = 10.00
  * currency = CurrencyCode#EUR "Euro"