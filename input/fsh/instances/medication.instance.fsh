Instance: AspirinMedication
InstanceOf: OpenIMISMedication
Description: "Example of openIMIS Medication"
* identifier[Code].value = "0001"
* identifier[Code].type = OpenIMISIdentifierCS#Code
* identifier[UUID].value = "71EFB78B-64EE-4A68-BE29-87DAF566EB20"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID
* code = SNOMEDCTMedicationCodes#7947003 
  * text = "ACETYLSALICYLIC ACID (ASPIRIN) TABS 300MG"
* form = SNOMEDCTFormCodes#385055001 "Tablet"
* amount 
  * numerator
    * value = 1000.00
* extension[unitPrice].valueMoney
  * value = 10.00
  * currency = CurrencyCode#EUR "Euro"
* extension[timing].valueTiming.repeat
  * frequency = 1
  * period = 0
  * periodUnit = UnitsOfTimeCS#d "day"

* extension[useContext]
  * extension[Gender].valueUsageContext
    * code = UsageContextTypeCS#gender "Gender"
    * valueCodeableConcept
      * coding[0] = FHIRAdministrativeGenderCS#male "Male"
      * coding[1] = FHIRAdministrativeGenderCS#female "Female"
  * extension[Age].valueUsageContext
    * code = UsageContextTypeCS#age "Age"
    * valueCodeableConcept
      * coding[0] = UsageContextAgeTypeCS#adult "Adult"
      * coding[1] = UsageContextAgeTypeCS#child "Child"
  * extension[CareType].valueUsageContext
    * code = UsageContextTypeCS#venue "Clinical Venue"
    * valueCodeableConcept
      * coding[0] = FHIRActCodeCS#AMB "ambulatory"

* extension[type].valueCodeableConcept = MedicationItemTypeCS#D "Drug"