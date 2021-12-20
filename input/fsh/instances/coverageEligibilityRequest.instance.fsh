// This is the profile for openIMIS Contract 
// Only for POST 
Instance: JoeDoeEnquiring
InstanceOf: OpenIMISCoverageEligibilityRequest
Description: """
            * Example of CoverageEligibilityRequest   
            """

* identifier[UUID].value = "D30F70DF-D10B-43D4-9578-5137C118AD84"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID

* status = FHIRFinancialResourceStatusCodes#active "Active"

* purpose = FHIREligibilityRequestPurpose#benefits "Coverage benefits"
* patient = Reference(joe-doe)

* created = "2021-09-17"
* insurer = Reference(openIMIS-Implementation)

* item[+]
  * category = ClaimItemCategoryCS#service "Service"
  * productOrService
    * text = "A1"

