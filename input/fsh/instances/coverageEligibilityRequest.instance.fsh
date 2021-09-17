// This is the profile for openIMIS Contract 
// Only for POST 
Instance: JoeDoeEnquiring
InstanceOf: OpenIMISCoverageEligibilityRequest
Description: """
            * Example of CoverageEligibilityRequest   
            """

* status = FHIRFinancialResourceStatusCodes#active "Active"

* purpose = FHIREligibilityRequestPurpose#benefits "Coverage benefits"
* patient = Reference(joe-doe)

* created = "2021-09-17"
* insurer = Reference(openIMIS)

* item[+]
  * category = ClaimItemCategoryCS#service "Service"
  * productOrService
    * text = "A1"

