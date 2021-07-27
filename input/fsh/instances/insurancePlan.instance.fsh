Instance: RX01
InstanceOf: OpenIMISInsurancePlan
Description: "Example of openIMIS InsurancePlan"
* identifier[Code].value = "RX01"
* identifier[Code].type = OpenIMISIdentifierCS#Code

* status = FHIRPublicationStatusCS#active "Active"
* type = FHIRInsurancePlanTypeCS#medical "Medical"
* name = "Regional fixed enrolment"
* period
  * start = "2016-10-01"
  * end = "2030-01-01"
* coverageArea = Reference(Upper-River-Region)
* coverage
  * type = FHIRInsurancePlanTypeCS#medical "Medical"
  * benefit 
    * type = FHIRInsurancePlanTypeCS#medical "Medical"
    * limit
      * value 
        * value = 12
        * unit = "month"
      * code = InsurancePlanCoverageBenefitLimitCS#period "Period"

* plan
  * generalCost[lumpsum]
    * type = InsurancePlanGeneralCostTypeCS#lumpsum "Lumpsum"
    * groupSize = 3
    * cost 
      * value = 10000.00
      * currency = CurrencyCode#EUR "Euro"
  * generalCost[premiumAdult]
    * type = InsurancePlanGeneralCostTypeCS#premiumAdult "Premium Adult"
    * cost 
      * value = 1000.00
      * currency = CurrencyCode#EUR "Euro"
  * generalCost[premiumChild]
    * type = InsurancePlanGeneralCostTypeCS#premiumChild "Premium Child"
    * cost 
      * value = 500.00
      * currency = CurrencyCode#EUR "Euro"
  * generalCost[registrationFee]
    * type = InsurancePlanGeneralCostTypeCS#registrationFee "Registration Fee"
    * cost 
      * value = 3000.00
      * currency = CurrencyCode#EUR "Euro"

* extension[startCycle][+].valueString = "01-03"
* extension[startCycle][+].valueString = "01-07"
* extension[startCycle][+].valueString = "01-10"
  
