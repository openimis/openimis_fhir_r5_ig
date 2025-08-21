Extension: MedicationFrequencyExtension
Id:        medication-frequency
Title:    "Frequency (Medication)"
Description: "The frequency a Medication can be prescribed."
* insert ExtensionContext(OpenIMISMedication)
* insert ExtensionContext(Medication)
* value[x] only Timing
* valueTiming
  * repeat
    * frequency 1..1
    * frequency = 1
    * period 1..1 
      * ^short = "Frequency (days)"
      * ^definition = """The minimum number of days the service can be administered again."""
    * periodUnit 1..1
    * periodUnit = UnitsOfTimeCS#d "day"

// Note: the definition of valueCodeableConcept doesn't prohibit to use same code twice.
// To improve we might define slicing based on coding value. 
Extension: MedicationUsageContextExtension
Id:        medication-usage-context
Title:    "UsageContext (Medication)"
Description: "The Context a Medication can be prescribed."
* insert ExtensionContext(OpenIMISMedication)
* insert ExtensionContext(Medication)
* extension contains
    Gender 0..1 and
    Age 0..1 and
    CareType 1..1
* extension[Gender]
  * value[x] only UsageContext
  * valueUsageContext
    * code = UsageContextTypeCS#gender "Gender"
    * value[x] only CodeableConcept
    * valueCodeableConcept
      * coding 1..2 
      * coding from UsageContextGenderTypeVS (required)
    * ^short = "Usage Context per Gender"
    * ^definition = "Usage Context per Gender male and female."
* extension[Age]
  * value[x] only UsageContext
  * valueUsageContext
    * code = UsageContextTypeCS#age "Age"
    * value[x] only CodeableConcept
    * valueCodeableConcept
      * coding 1..2 
      * coding from UsageContextAgeTypeVS (required)
    * ^short = "Usage Context per Age"
    * ^definition = "Usage Context per Age adult and child."
* extension[CareType] 
  * value[x] only UsageContext
  * valueUsageContext
    * code = UsageContextTypeCS#venue "Clinical Venue"
    * value[x] only CodeableConcept
    * valueCodeableConcept
      * coding 1..2 
      * coding from ActivityDefinitionUsageContextVenueTypeVS (required)
    * ^short = "Usage Context per Care Type"
    * ^definition = """Usage Context per Care Type. openIMIS `both` value will have both `AMB` and `IMP` codes listed."""

Extension: MedicationTypeExtension
Id:        medication-type
Title:    "Medication Type (Medication)"
Description: "Indicates the Item type for the Medication."
* insert ExtensionContext(OpenIMISMedication)
* insert ExtensionContext(Medication)
* value[x] only CodeableConcept
* valueCodeableConcept from MedicationItemTypeVS (required)

Extension: MedicationLevelExtension
Id:        medication-level
Title: "Level (Medication)"
Description: "Indicates the Level for a Medication."
* insert ExtensionContext(OpenIMISMedication)
* value[x] only CodeableConcept
* valueCodeableConcept from MedicationLevelVS (required)



