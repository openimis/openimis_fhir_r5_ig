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
  * end = "2022-12-31"
* coverageArea = Reference(Upper-River-Region)
* coverage
  * type = FHIRInsurancePlanTypeCS#medical "Medical"
  * benefit 
    * type = FHIRInsurancePlanTypeCS#medical "Medical"
    * limit[period]
      * value 
        * value = 12
        * unit = "month"
      * code = InsurancePlanCoverageBenefitLimitCS#period "Period"
    * limit[memberCount]
      * value 
        * value = 10
        * unit = "member"
      * code = InsurancePlanCoverageBenefitLimitCS#memberCount "Member Count"

* plan
  * generalCost[lumpsum]
    * type = InsurancePlanGeneralCostTypeCS#lumpsum "Lumpsum"
    * groupSize = 3
    * cost 
      * value = 1000.00
      * currency = CurrencyCode#EUR "Euro"
  * generalCost[premiumAdult]
    * type = InsurancePlanGeneralCostTypeCS#premiumAdult "Premium Adult"
    * cost 
      * value = 100.00
      * currency = CurrencyCode#EUR "Euro"
  * generalCost[premiumChild]
    * type = InsurancePlanGeneralCostTypeCS#premiumChild "Premium Child"
    * cost 
      * value = 50.00
      * currency = CurrencyCode#EUR "Euro"
  * generalCost[registrationFee]
    * type = InsurancePlanGeneralCostTypeCS#registrationFee "Registration Fee"
    * cost 
      * value = 300.00
      * currency = CurrencyCode#EUR "Euro"

* extension[maxInstallments].valueUnsignedInt = 3

* extension[conversion].valueReference = Reference(RX02)

* extension[startCycle][+].valueString = "01-03"
* extension[startCycle][+].valueString = "01-07"
* extension[startCycle][+].valueString = "01-10"
  
* extension[administrationPeriod]
  * valueQuantity
    * value = 1
    * unit = "months"

* extension[gracePeriodPayment]
  * valueQuantity
    * value = 1
    * unit = "months"

* extension[gracePeriodRenewal]
  * valueQuantity
    * value = 1
    * unit = "months"

* extension[gracePeriodEnrolment]
  * valueQuantity
    * value = 1
    * unit = "months"

* extension[renewalDiscount]
  * extension[Percentage].valueDecimal = 50
  * extension[Period].valueQuantity
    * value = 2
    * unit = "months"

* extension[enrolmentDiscount]
  * extension[Percentage].valueDecimal = 80
  * extension[Period].valueQuantity
    * value = 2
    * unit = "months"


Instance: RX02
InstanceOf: OpenIMISInsurancePlan
Description: "Example of openIMIS InsurancePlan"
* identifier[Code].value = "RX01"
* identifier[Code].type = OpenIMISIdentifierCS#Code

* status = FHIRPublicationStatusCS#active "Active"
* type = FHIRInsurancePlanTypeCS#medical "Medical"
* name = "Regional fixed enrolment"
* period
  * start = "2023-10-01"
  * end = "2030-12-31"
* coverageArea = Reference(Upper-River-Region)
* coverage
  * type = FHIRInsurancePlanTypeCS#medical "Medical"
  * benefit 
    * type = FHIRInsurancePlanTypeCS#medical "Medical"
    * limit[period]
      * value 
        * value = 12
        * unit = "month"
      * code = InsurancePlanCoverageBenefitLimitCS#period "Period"
    * limit[memberCount]
      * value 
        * value = 10
        * unit = "member"
      * code = InsurancePlanCoverageBenefitLimitCS#memberCount "Member Count"

* plan
  * generalCost[lumpsum]
    * type = InsurancePlanGeneralCostTypeCS#lumpsum "Lumpsum"
    * groupSize = 3
    * cost 
      * value = 1500.00
      * currency = CurrencyCode#EUR "Euro"
  * generalCost[premiumAdult]
    * type = InsurancePlanGeneralCostTypeCS#premiumAdult "Premium Adult"
    * cost 
      * value = 150.00
      * currency = CurrencyCode#EUR "Euro"
  * generalCost[premiumChild]
    * type = InsurancePlanGeneralCostTypeCS#premiumChild "Premium Child"
    * cost 
      * value = 70.00
      * currency = CurrencyCode#EUR "Euro"
  * generalCost[registrationFee]
    * type = InsurancePlanGeneralCostTypeCS#registrationFee "Registration Fee"
    * cost 
      * value = 200.00
      * currency = CurrencyCode#EUR "Euro"

* extension[maxInstallments].valueUnsignedInt = 3

* extension[startCycle][+].valueString = "01-03"
* extension[startCycle][+].valueString = "01-07"
* extension[startCycle][+].valueString = "01-10"
  
* extension[administrationPeriod]
  * valueQuantity
    * value = 1
    * unit = "months"

* extension[gracePeriodPayment]
  * valueQuantity
    * value = 1
    * unit = "months"

* extension[gracePeriodRenewal]
  * valueQuantity
    * value = 1
    * unit = "months"

* extension[gracePeriodEnrolment]
  * valueQuantity
    * value = 1
    * unit = "months"

* extension[renewalDiscount]
  * extension[Percentage].valueDecimal = 50
  * extension[Period].valueQuantity
    * value = 2
    * unit = "months"

* extension[enrolmentDiscount]
  * extension[Percentage].valueDecimal = 80
  * extension[Period].valueQuantity
    * value = 2
    * unit = "months"
