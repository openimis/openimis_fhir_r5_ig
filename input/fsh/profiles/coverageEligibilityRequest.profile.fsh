// This is the profile for openIMIS Claim Response
// Mapping is done throught Claim openIMIS entity
Profile: OpenIMISCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Id: openimis-coverage-eligibility-request
Title: "openIMIS CoverageEligibilityRequest"
Description: "Defines a CoverageEligibilityRequest for openIMIS to enquire an Insuree."

* identifier 0..0 

* status = FHIRFinancialResourceStatusCodes#active "Active"

* priority 0..0
* purpose = FHIREligibilityRequestPurpose#benefits "Coverage benefits"
* patient only Reference(OpenIMISPatient)

* serviced[x] 0..0
* created 1..1
* enterer 0..0 // might be used to identify the EO or CA if generic JWT is used for integration
* provider 0..0

* insurer 1..1
* insurer = Reference(openIMIS)
  * ^definition = "Hardcodded as openIMIS doesn't support multiple insurance organizations."

* facility 0..0
* supportingInfo 0..0
* insurance 0..0

* item 0..*
  * supportingInfoSequence 0..0

  * category from ClaimItemCategoryVS (required)
    * ^short = "Category"
    * ^definition = "Items category as medical item or service."

  * productOrService 1..1
    * coding 0..0
    * text 1..1
      * ^short = "Item/Service Code"
      * ^definition = "Service or Item Code."
    * ^short = "Item Code"
    * ^definition = "Service or Item Code."

  * modifier 0..0
  * provider 0..0
  * quantity 0..0
  * unitPrice 0..0
  * facility 0..0
  * diagnosis 0..0
  * detail 0..0

