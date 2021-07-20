Instance: john-doe
InstanceOf: OpenIMISPatient
Description: "Example of openIMIS Patient"
* identifier[InsureeCode].value = "123456789"
* identifier[InsureeCode].type = OpenIMISIdentifierCS#Code
* name.family = "Doe"
* name.given[0] = "John"
* gender = AdministrativeGenderCS#male
* birthDate = "1962-02-05"
* address[FamilyAddress].line = "5 Tsoka"
* address[FamilyAddress].state = "Ultha"
* address[FamilyAddress].district = "Rapta"
* address[FamilyAddress].extension[municipality].valueString = "Jamu"
* address[FamilyAddress].city = "Jamula"
* address[FamilyAddress].extension[location].valueReference = Reference(Jamula-village)
* maritalStatus = FHIRMaritalStatusCS#M
* contact[+]
  * relationship = PatientContactRelationshipCS#1
  * name 
    * family = "Doe"
    * given[0] = "John"
* extension[isHead].valueBoolean = false
* extension[educationLevel].valueCodeableConcept = PatientEducationLevelCS#4 "University"
* extension[profession].valueCodeableConcept = PatientProfessionCS#2 "Employee"
* extension[identification].extension[number].valueString = "NationaID1"
* extension[identification].extension[type].valueCodeableConcept = PatientIdentificationTypesCS#N
* extension[cardIssued].valueBoolean = true
* extension[group].valueReference = Reference(doe-family)
* extension[vulnerability].valueBoolean = true

Instance: jane-doe
InstanceOf: OpenIMISPatient
Description: "Example of openIMIS Patient"
* identifier[InsureeCode].value = "123456788"
* identifier[InsureeCode].type = OpenIMISIdentifierCS#Code
* name.family = "Doe"
* name.given[0] = "Jane"
* gender = AdministrativeGenderCS#female
* birthDate = "1964-05-15"
* address[FamilyAddress].line = "5 Tsoka"
* address[FamilyAddress].state = "Ultha"
* address[FamilyAddress].district = "Rapta"
* address[FamilyAddress].extension[municipality].valueString = "Jamu"
* address[FamilyAddress].city = "Jamula"
* address[FamilyAddress].extension[location].valueReference = Reference(Jamula-village)
* maritalStatus = FHIRMaritalStatusCS#M
* extension[isHead].valueBoolean = true
* extension[educationLevel].valueCodeableConcept = PatientEducationLevelCS#4 "University"
* extension[profession].valueCodeableConcept = PatientProfessionCS#3 "Self Employee"
* extension[identification].extension[number].valueString = "NationaID2"
* extension[identification].extension[type].valueCodeableConcept = PatientIdentificationTypesCS#N "National ID"
* extension[cardIssued].valueBoolean = true
* extension[group].valueReference = Reference(doe-family)

