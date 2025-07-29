// This is the profile for openIMIS Contract 
// Only for POST 
Instance: ClaimResponse001
InstanceOf: OpenIMISClaimResponse
Description: """
            * Example of a Claim   
            """

* id = "Claim001"
* identifier[UUID].value = "D30F70DF-D10B-43D4-BF31-5137C118AD83"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID
* identifier[Code].value = "Code001"
* identifier[Code].type = OpenIMISIdentifierCS#Code

* status = FHIRFinancialResourceStatusCodes#active "Active"
* type = ClaimVisitTypeCS#O "Other"
* use = FHIRClaimUseCodes#claim "Claim"
* patient = Reference(john-doe)

* created = "2021-09-17"

* requestor = Reference(Rushila-Dani-CA)

* outcome = FHIRClaimProcessingCodes#partial "Partial Processing"

* item[+]
  * itemSequence = 1
  * adjudication[+]
    * category = ClaimStatusCS#4 "Checked"
    * reason 
      * coding = ClaimRejectionReasonsCS#0 "ACCEPTED"

    // * value = 1 // REMOVED: value is removed in R5
    * amount 
      * value = 40.00
    
  * extension[itemReference].valueReference = Reference(GeneralConsultationService)

* item[+]
  * itemSequence = 2
  * adjudication[+]
    * category = ClaimStatusCS#4 "Checked"
    * reason 
      * coding = ClaimRejectionReasonsCS#0 "ACCEPTED"
    // * value = 2 // REMOVED: value is removed from adjudication
    * amount 
      * value = 10.00
  
  * extension[itemReference].valueReference = Reference(AspirinMedication)

* total[+]
  * category = ClaimStatusCS#4 "Checked"
  * amount
    * value = 60.00
   