Instance: GeneralConsultationService
InstanceOf: OpenIMISActivityDefinition
Description: "Example of openIMIS ActivityDefinition"
* identifier[ServiceCode].value = "A1"
* identifier[ServiceCode].type = OpenIMISIdentifierCS#Code
* identifier[ServiceUUID].value = "db2c3a6c-af07-49bd-8f6a-96aa1fc2bcf9"
* identifier[ServiceUUID].type = OpenIMISIdentifierCS#UUID
* name = "A1"
* title = "General Consultation"
* status = PublicationStatusCS#active "Active"
* date = "2020-01-01"
* useContext[Gender]
  * code = UsageContextTypeCS#gender "Gender"
  * valueCodeableConcept
    * coding[0] = FHIRAdministrativeGenderCS#male "Male"
    * coding[1] = FHIRAdministrativeGenderCS#female "Female"
* useContext[Age]
  * code = UsageContextTypeCS#age "Age"
  * valueCodeableConcept
    * coding[0] = ActivityDefinitionUsageContextAgeTypeCS#adult "Adult"
    * coding[1] = ActivityDefinitionUsageContextAgeTypeCS#child "Child"
* useContext[CareType]
  * code = UsageContextTypeCS#venue "Clinical Venue"
  * valueCodeableConcept
    * coding[0] = FHIRActCodeCS#AMB "ambulatory"

* topic = ActivityDefinitionServiceTypeCS#P "Preventive"
* timingTiming.repeat
  * frequency = 1
  * period = 0
  * periodUnit = UnitsOfTimeCS#d "day"

* extension[unitPrice].valueMoney
  * value = 40.00
  * currency = CurrencyCode#EUR "Euro"
