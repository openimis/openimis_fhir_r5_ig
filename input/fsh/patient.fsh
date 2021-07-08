// This is the profile for openIMIS Patient 
// Mapping is done throught Insuree and Family openIMIS entities
Profile: OpenIMISPatient
Parent: Patient
Id: oi-patient
Title: "openIMIS Patient"
Description: "Defines a Patient for openIMIS which maps to an Insuree"
* identifier 1..* MS // Must contain at least the Insuree Code
* identifier.type.coding.code 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains
    InsureeCode 0..1 MS and
    InsureeUUID 0..1 and
    InsureeID 0..1
* identifier[InsureeCode].type = OpenIMISIdentifierCS#Code
* identifier[InsureeUUID].type = OpenIMISIdentifierCS#UUID
* identifier[InsureeID].type = OpenIMISIdentifierCS#DB
* name 1..* MS //HumanName "Name(s) of the Insuree" "The names by which the Insuree is or has been known"
* birthDate 1..1 MS //dateTime "The date of birth, if known" "The date on which the person was born. Approximations may be used if exact date is unknown."

Instance: adam-everyman
InstanceOf: OpenIMISPatient
Description: "Example of openIMIS Patient"
* identifier[InsureeCode].value = "123456789"
* identifier[InsureeCode].type = OpenIMISIdentifierCS#Code
* name.family = "Doe"
* name.given[0] = "John"
* gender = #male
* birthDate = "1962-02-05"
