// This is the profile for openIMIS Organization 
// There is no entity present in openIMIS but this is a representation of the openIMIS implementation 
// and is configured through opsnIMIS FHIR R5 module configuration
Profile: OpenIMISInsuranceOrganization
Parent: Organization
Id: openimis-insurance-organization
Title: "openIMIS Insurance Organization"
Description: """
Defines an Organization for openIMIS which maps to the openIMIS implementation as Insurance. 
This is required in different resources.
"""

* identifier 1..1 MS // Must contain at least the HF Code
  * type 1..1  
  * value 1..1
* identifier.type.coding.code = OpenIMISIdentifierCS#Code // it is mapped to Code
  * ^short = "Insurance Code"
  * ^definition = "Insurance Code set through FHIR R5 module configuration. Default: openIMIS"

* active 0..0 // not used
* type 1..1
  * coding.code = OrganizationTypeCS#ins "Insurance Company"

* name 1..1 
* alias 0..0 // not used

// REMOVED: telecom is moved under contact
* contact 0..1
  * purpose 1..1
  * purpose = ContactEntityTypeCS#ADMIN "Administrative"
  * ^short = "Insurance contact"
  * ^definition = "Insurance contact details. "
  * name 1..1
    * use 0..0
    * text 1..1
    * family 0..0
    * given 0..0
    * prefix 0..0
    * suffix 0..0
    * period 0..0
  * telecom 0..3
    * value 1..1 
  * telecom ^slicing.discriminator.type = #value
  * telecom ^slicing.discriminator.path = "system"
  * telecom ^slicing.rules = #closed
  * telecom contains
      email 0..1 and
      phone 0..1 and 
      fax 0..1 
  * telecom[email].system = FHIRContactPointSystemCS#email 
    * ^short = "Insurance email"
    * ^definition = "Insurance email contact."
  * telecom[phone].system = FHIRContactPointSystemCS#phone
    * ^short = "Insurance phone"
    * ^definition = "Insurance phone contact."
  * telecom[fax].system = FHIRContactPointSystemCS#fax
    * ^short = "Insurance fax"
    * ^definition = "Insurance fax contact."

  * address 0..1 MS // HF address => state->district
    * type = FHIRAddressType#physical
    * country 0..0 // Not used 
    // Location.LocationName from HF's Region (HF.LocationId.ParentLocationId)
    * state 0..1 MS // mapped to Region 
      * ^short = "State/Region"
      * ^definition = "Insurance's State/Region name as it is configured in openIMIS."
    // Location.LocationName from HF's District (HF.LocationId)
    * district 0..1 MS // mapped to District 
      * ^short = "District"
      * ^definition = "Insurance's District name as it is configured in openIMIS."
    * extension contains AddressMunicipalityExtension named municipality 0..1 MS // mapped to Ward (see previous two comments) !!!
      * ^short = "Municipality/Ward"
      * ^definition = "Insuree's Municipality/Ward name as it is configured in openIMIS."
    * city 0..1 MS // Location.LocationName from Family's City (Family.LocationId) or Insuree's City (Insuree.CurrentVillage)
      * ^short = "City/Village"
      * ^definition = "Insuree's City/Village name as it is configured in openIMIS."
    * postalCode 0..0 // not used
    * line 0..1 // HFAddress
  
* partOf 0..0 // not used
