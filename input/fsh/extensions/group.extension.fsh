Extension: GroupPovertyStatusExtension
Id:        group-poverty-status
Title:    "Poverty Status (Group)"
Description: "Whether the Group has the poverty status."
* insert ExtensionContext(Group)
* value[x] only boolean

Extension: GroupAddressExtension
Id:        group-address
Title:    "Poverty Status (Group)"
Description: "Whether the Group has the poverty status."
* insert ExtensionContext(Group)
* value[x] only Address
* valueAddress
  * type = FHIRAddressType#physical
  * use = FHIRAddressUse#home // mapped to Family address
  * country 0..0 // Not used 
  // Location.LocationName from Family's Region (Family.LocationId.ParentLocationId.ParentLocationId.ParentLocationId)
  * state 0..1 MS // mapped to Region (see previous two comments) !!!
    * ^short = "State/Region"
    * ^definition = "Insuree's State/Region name as it is configured in openIMIS."
  // Location.LocationName from Family's District (Family.LocationId.ParentLocationId.ParentLocationId)
  * district 0..1 MS // mapped to District (see previous two comments) !!!
    * ^short = "District"
    * ^definition = "Insuree's District name as it is configured in openIMIS."
  // Location.LocationName from Family's Ward (Family.LocationId.ParentLocationId)
  * extension contains AddressMunicipalityExtension named municipality 0..1 MS // mapped to Ward (see previous two comments) !!!
    * ^short = "Municipality/Ward"
    * ^definition = "Insuree's Municipality/Ward name as it is configured in openIMIS."
  * city 0..1 MS // Location.LocationName from Family's City (Family.LocationId)
    * ^short = "City/Village"
    * ^definition = "Insuree's City/Village name as it is configured in openIMIS."
  * postalCode 0..0 // not used
  * line 0..1 // Family.FamilyAddress or Insuree.CurrentAddress
  * extension contains AddressLocationReferenceExtension named location 1..1 MS 
    * ^short = "Group Location Reference"
    * ^definition = "Specifies the Group Location reference to the city/village level."

Extension: GroupTypeExtension
Id:        group-type
Title:    "Group Type (Group)"
Description: "Indicates the type of the Group. Values defined by openIMIS. Can be extended."
* insert ExtensionContext(Group)
* value[x] only CodeableConcept
* valueCodeableConcept from GroupTypesVS (example)

Extension: GroupConfirmationExtension
Id:        group-confirmation
Title:     "Confirmation (Group)"
Description: "Indicates the confirmation for the Group."
* insert ExtensionContext(Group)
* extension contains
    number 1..1 MS and
    type 0..1 MS 
* extension[number] 
  * value[x] only string
  * ^short = "Group Confirmation Number"
  * ^definition = "Specifies the Group's confirmation number."
* extension[type]
  * value[x] only CodeableConcept
  * valueCodeableConcept from GroupConfirmationTypeVS (example)
  * ^short = "Group Confirmation Type"
  * ^definition = "Specifies the Group's confirmation type."
