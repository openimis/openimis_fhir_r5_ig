Instance: GeneralConsultationService
InstanceOf: OpenIMISActivityDefinition
Description: "Example of openIMIS ActivityDefinition"
* identifier[Code].value = "A1"
* identifier[Code].type = OpenIMISIdentifierCS#Code
* identifier[UUID].value = "db2c3a6c-af07-49bd-8f6a-96aa1fc2bcf9"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID
* name = "A1"
* title = "General Consultation"
* status = FHIRPublicationStatusCS#active "Active"
* date = "2020-01-01"
* useContext[Gender]
  * code = UsageContextTypeCS#gender "Gender"
  * valueCodeableConcept
    * coding[0] = FHIRAdministrativeGenderCS#male "Male"
    * coding[1] = FHIRAdministrativeGenderCS#female "Female"
* useContext[Age]
  * code = UsageContextTypeCS#age "Age Range"
  * valueCodeableConcept
    * coding[0] = UsageContextAgeTypeCS#adult "Adult"
    * coding[1] = UsageContextAgeTypeCS#child "Child"
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
