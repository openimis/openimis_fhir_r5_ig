// This is the profile for openIMIS Patient 
// Mapping is done throught Insuree and Family openIMIS entities
Profile: OpenIMISPatient
Parent: Patient
Id: openimis-patient
Title: "openIMIS Patient"
Description: "Defines a Patient for openIMIS which maps to an Insuree"
* identifier 1..* MS // Must contain at least the Insuree Code
* identifier.type 1..1  
* identifier.type.coding.code from OpenIMISIdentifierVS (required)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #closed
* identifier contains
    InsureeCode 0..1 MS and
    InsureeUUID 0..1 and
    InsureeID 0..1
* identifier[InsureeCode].type = OpenIMISIdentifierCS#Code // it is mapped to CHFID
* identifier[InsureeUUID].type = OpenIMISIdentifierCS#UUID
* identifier[InsureeID].type = OpenIMISIdentifierCS#DBID
* active 0..0 // Not available in openIMIS => could be true if Insuree has active Policy
* name 1..1 MS // The names by which the Insuree is known
* birthDate 1..1 MS // The date on which the person was born
* deceased[x] 0..0 // Is not available in openIMIS
* address 1..1 MS // Family address or Current address of the Insuree
  * type = AddressType#physical
  // Location.LocationName from Family's Region (Family.LocationId.ParentLocationId.ParentLocationId.ParentLocationId)
  // Location.LocationName from Insuree's Region (Insuree.CurrentVillage.ParentLocationId.ParentLocationId.ParentLocationId)
  * country 1..1 MS // mapped to Region (see previous two comments) !!!
  // Location.LocationName from Family's District (Family.LocationId.ParentLocationId.ParentLocationId)
  // Location.LocationName from Insuree's District (Insuree.CurrentVillage.ParentLocationId.ParentLocationId)
  * state 1..1 MS // mapped to District (see previous two comments) !!!
  // Location.LocationName from Family's Ward (Family.LocationId.ParentLocationId)
  // Location.LocationName from Insuree's Ward (Insuree.CurrentVillage.ParentLocationId)
  * district 1..1 MS // mapped to Ward (see previous two comments) !!!
  * city 1..1 MS // Location.LocationName from Family's City (Family.LocationId) or Insuree's City (Insuree.CurrentVillage)
  // Location.LocationCode from Family's City (Family.LocationId) or Insuree's City (Insuree.CurrentVillage)
  * postalCode 1..1 MS // mapped to Location Code (see previou comment) !!!
  * line 0..1 // Family.FamilyAddress or Insuree.CurrentAddress
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #closed
* address contains
    FamilyAddress 0..1 MS and
    InsureeAddress 0..1
* address[FamilyAddress].use = AddressUse#home // mapped to Family address
* address[InsureeAddress].use = AddressUse#temp // mapped to Insuree current address
* maritalStatus from OpenIMISMaritalStatusVS (required)



Alias: AddressUse = http://hl7.org/fhir/address-use
Alias: AddressType = http://hl7.org/fhir/address-type

Instance: john-doe
InstanceOf: OpenIMISPatient
Description: "Example of openIMIS Patient"
* identifier[InsureeCode].value = "123456789"
//* identifier[InsureeCode].type = OpenIMISIdentifierCS#Code
* name.family = "Doe"
* name.given[0] = "John"
* gender = #male
* birthDate = "1962-02-05"
* address[FamilyAddress].line = "5 Tsoka"
* address[FamilyAddress].country = "Ultha"
* address[FamilyAddress].state = "Rapta"
* address[FamilyAddress].district = "Jamu"
* address[FamilyAddress].city = "Jamula"
* address[FamilyAddress].postalCode = "R1D1M2V1"
