// This is the profile for openIMIS Contract 
// Only for POST 
Instance: JoeDoeCoverage
InstanceOf: OpenIMISCoverage
Description: """
            * Example of a Coverage   
            """

* identifier[UUID].value = "D30F70DF-D10B-43D4-BF31-5137C118AD84"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID

* status = FHIRFinancialResourceStatusCodes#active "Active"

* policyHolder = Reference(jane-doe)
* beneficiary = Reference(joe-doe)

* period 
  * start = "2021-07-01"
  * end = "2022-06-30"

* payor = Reference(jane-doe)

* class
  * type = FHIRCoverageClassCodes#plan "Plan"
  * value = "RX01"
  * name = "Regional fixed enrolment"
    
* extension[enrollDate].valueDate = "2021-01-28"
* extension[effectiveDate].valueDate = "2021-01-28"