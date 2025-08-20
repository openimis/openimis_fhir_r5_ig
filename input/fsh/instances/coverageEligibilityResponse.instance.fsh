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

  // Benefit slice (keeps category)
  * item[benefit]
    * category = CoverageItemCategoryCS#benefit
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
      * allowedMoney.value = 25000
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#consultation_amount "consultation_amount"
      * allowedMoney.value = 15000
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#surgery_amount "surgery_amount"
      * allowedMoney.value = 70000
    * benefit[+]
      * type = CoverageItemBenefitTypeCS#delivery_amount "delivery_amount"
      * allowedMoney.value = 15000

  // Billable code slice (no category; satisfies ces-1)
  * item[billcode]
    * productOrService.text = "A1"
    * excluded = false


// START WITH THE VALIDATION 
  // Error @ CoverageEligibilityResponse.insurance[0].item[1] (line 165, col10): Constraint failed: ces-1: 'SHALL contain a category or a billcode but not both.' (defined in http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse)
  // Warning @ CoverageEligibilityResponse (line 1, col2): Constraint failed: dom-6: 'A resource should have narrative for robust management' (defined in http://hl7.org/fhir/StructureDefinition/DomainResource) (Best Practice Recommendation)
  // Error @ CoverageEligibilityResponse.insurance[0].item[0].benefit[0] (line 59, col14): Slicing cannot be evaluated: Invalid function name null() in discriminator (@char 8)
  // Error @ CoverageEligibilityResponse.insurance[0].item[0].benefit[1] (line 71, col14): Slicing cannot be evaluated: Invalid function name null() in discriminator (@char 8)
  // Error @ CoverageEligibilityResponse.insurance[0].item[0].benefit[2] (line 83, col14): Slicing cannot be evaluated: Invalid function name null() in discriminator (@char 8)
  // Error @ CoverageEligibilityResponse.insurance[0].item[0].benefit[3] (line 95, col14): Slicing cannot be evaluated: Invalid function name null() in discriminator (@char 8)
  // Error @ CoverageEligibilityResponse.insurance[0].item[0].benefit[4] (line 107, col14): Slicing cannot be evaluated: Invalid function name null() in discriminator (@char 8)
  // Error @ CoverageEligibilityResponse.insurance[0].item[0].benefit[5] (line 121, col14): Slicing cannot be evaluated: Invalid function name null() in discriminator (@char 8)
  // Error @ CoverageEligibilityResponse.insurance[0].item[0].benefit[6] (line 135, col14): Slicing cannot be evaluated: Invalid function name null() in discriminator (@char 8)
  // Error @ CoverageEligibilityResponse.insurance[0].item[0].benefit[7] (line 149, col14): Slicing cannot be evaluated: Invalid function name null() in discriminator (@char 8)