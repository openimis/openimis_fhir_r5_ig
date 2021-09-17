// This is the profile for openIMIS Contract 
// Only for POST 
Instance: Claim001
InstanceOf: OpenIMISClaim
Description: """
            * Example of a Claim   
            """

* id = "Claim001"
* identifier[Code].value = "Code001"
* identifier[Code].type = OpenIMISIdentifierCS#Code

* status = FHIRFinancialResourceStatusCodes#active "Active"
* type = ClaimVisitTypeCS#O "Other"
* use = FHIRClaimUseCodes#claim "Claim"
* patient = Reference(john-doe)

* billablePeriod 
  * start = "2021-09-15"
  * end = "2021-09-15"

* created = "2021-09-16"

* enterer = Reference(Rushila-Dani-CA)
* provider = Reference(RaptaDistrictHospital)
* priority = FHIRClaimProcessPriorityCodes#normal "Normal"

* supportingInfo[explanation]
  * sequence = 1
  * category = ClaimSupportingInfoCategoryCS#explanation 
  * valueString = "The patient was complaining of head pain"

* diagnosis[+]
  * sequence = 1
  * diagnosisCodeableConcept = DiagnosisICD10Level1CS#G44 "Other headache syndromes"

* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(JoeDoeCoverage)

* item[+]
  * sequence = 1
  * category = ClaimItemCategoryCS#service "Service"
  * productOrService
    * text = "General Consultation"
  * quantity.value = 1
  * unitPrice 
    * value = 40.00
    * currency = CurrencyCode#EUR "Euro"
  
  * extension[itemReference].valueReference = Reference(GeneralConsultationService)

* item[+]
  * sequence = 2
  * category = ClaimItemCategoryCS#item "Item"
  * productOrService
    * text = "ACETYLSALICYLIC ACID (ASPIRIN) TABS 300MG"
  * quantity.value = 2
  * unitPrice 
    * value = 10.00
    * currency = CurrencyCode#EUR "Euro"
  
  * extension[itemReference].valueReference = Reference(AspirinMedication)

* total
  * value = 60.00
  * currency = CurrencyCode#EUR "Euro"
  