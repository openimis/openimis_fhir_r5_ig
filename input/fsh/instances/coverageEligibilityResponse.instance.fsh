// This is the profile for openIMIS Contract 
// Only for POST 
Instance: JoeDoeEnquiringResponse
InstanceOf: OpenIMISCoverageEligibilityResponse
Description: """
            * Example of CoverageEligibilityResponse   
            """

* identifier[UUID].value = "D30F70DF-D10B-43D4-9578-5137C118AD84"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID

* status = FHIRFinancialResourceStatusCodes#active "Active"

* purpose = FHIREligibilityRequestPurpose#benefits "Coverage benefits"
* patient = Reference(joe-doe)
* created = "2021-09-17"

* request = Reference(JoeDoeEnquiring)
* outcome = FHIRClaimProcessingCodes#complete "Processing Complete"

* insurer = Reference(openIMIS-Implementation)

* insurance[+] 
  * coverage = Reference(JoeDoeCoverage)
  * benefitPeriod 
    * start = "2021-07-01"
    * end = "2022-06-30"
  * item[benefit]
    * category = CoverageItemCategoryCS#benefit "Benefit Package"
    * name = "RX01"
    * description = "Regional fixed enrolment"
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#admissions_left "total_admissions"
      * allowedUnsignedInt = 2
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#consultations_left "total_consultations"
      * allowedUnsignedInt = 4
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#surgeries_left "total_surgeries"
      * allowedUnsignedInt = 1
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#deliveries_left "total_deliveries"
      * allowedUnsignedInt = 1
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#hospitalization_amount "hospitalization_amount"
      * allowedMoney 
        * value = 25000
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#consultation_amount "consultation_amount"
      * allowedMoney 
        * value = 15000
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#surgery_amount "surgery_amount"
      * allowedMoney 
        * value = 70000
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#delivery_amount "delivery_amount"
      * allowedMoney 
        * value = 15000

  * item[service]
    * category = CoverageItemCategoryCS#service "Service"
    * productOrService 
      * text = "A1"
    * excluded = false


