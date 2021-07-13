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
* identifier[InsureeCode].type.coding.code = OpenIMISIdentifierCS#Code // it is mapped to CHFID
* identifier[InsureeUUID].type.coding.code = OpenIMISIdentifierCS#UUID
* identifier[InsureeID].type.coding.code = OpenIMISIdentifierCS#DBID

* insert NotUsed(active) // Not available in openIMIS => could be true if Insuree has active Policy
* name 1..1 // The names by which the Insuree is known
  * family and given MS

* telecom 0..1 
  * value 1..1 
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #closed
* telecom contains
    email 0..1 and
    phone 0..1
* telecom[email].system = ContactPointSystem#email // it is mapped to CHFID
* telecom[phone].system = ContactPointSystem#phone

* gender 1..1 MS 
* birthDate 1..1 MS // The date on which the person was born
* NotUsed(deceased[x]) // Is not available in openIMIS

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
* NotUsed(multipleBirth[x])

* photo 0..1 MS 
  * contentType 1..1 MS // Mime type of the Insuree image
  * hash 1..1 // data hash 
  * title 1..1 MS // image filename 
  * creation 1..1 MS // image creation date
* photo ^slicing.discriminator.type = #exists
* photo ^slicing.discriminator.path = "url"
* photo ^slicing.rules = #closed
* photo ^slicing.description = "Defines if photo is sent by URL or data"
* photo contains
    URL 0..1 and
    Data 0..1 
* photo[URL] // used in GET Insuree
  * url 1..1
  * data 0..0
  * size 1..1
  * ^short = "used in GET Patient"
* photo[Data] // used in POST && PUT Insuree
  * url 0..0
  * data 1..1
  * size 0..1
  * ^short = "used in POST & PUT Patient"

* contact 0..1  // ToDo: see https://openimis.atlassian.net/browse/OE0-26
  * relationship 0..1
  * relationship from OpenIMISContactRelationshipVS (extensible)
  * name 1..1
  * address 0..1
* insert ShortAndDefinition(contact, Head of Family contact, Head of Family contact details. If missing\, this Person is the Head of Family.)

* communication 0..0 // Not used but can be mapped to tblFamilySMS.LanguageOfSMS
* generalPractitioner only Reference(Organization) // ToDo: see https://openimis.atlassian.net/browse/OE0-25 
* managingOrganization 0..0
* link 0..0 // ToDo: see https://openimis.atlassian.net/browse/OE0-26

* extension contains IsHead named isHead 0..1 MS

Instance: john-doe
InstanceOf: OpenIMISPatient
Description: "Example of openIMIS Patient"
* identifier[InsureeCode].value = "123456789"
* identifier[InsureeCode].type = OpenIMISIdentifierCS#Code
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
* maritalStatus = MaritalStatusCS#M
* contact[+]
  * relationship = OpenIMISContactRelationshipCS#Brother/Sister
  * name 
    * family = "Doe"
    * given[0] = "Jane"

// The extension can be applied to MedicationRequests, MedicationAdministrations, and Procedures
Extension: IsHead
Id:        is-head
Title:    "Is Head of the Family"
Description: "Whether the Patient is the Head of the Family"
* insert ExtensionContext(Patient)
* value[x] only boolean

