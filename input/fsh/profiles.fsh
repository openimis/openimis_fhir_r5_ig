// This is the profile for openIMIS Patient 
// Mapping is done throught Insuree and Family openIMIS entities
Profile: PatientProfile
Parent: Patient
* identifier 1..* MS //"The identifier list" "Must contain at least the Insuree Code"
* name 1..1 MS //HumanName "Name(s) of the Insuree" "The names by which the Insuree is or has been known"
* birthDate 1..1 MS //dateTime "The date of birth, if known" "The date on which the person was born. Approximations may be used if exact date is unknown."