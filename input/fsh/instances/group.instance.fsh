Instance: doe-family
InstanceOf: OpenIMISGroup
Description: "Example of openIMIS Group"
* identifier[UUID].value = "D30F70DF-D10B-43D4-BF31-5137C118AD82"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID
* identifier[Code].value = "123456788"
* identifier[Code].type = OpenIMISIdentifierCS#Code
* type = GroupTypeCS#person
* actual = true
* active = true
* name = "Doe Jane"
* quantity = 2
* member[+].entity = Reference(john-doe)
* member[+].entity = Reference(jane-doe)
* extension[address].valueAddress.extension[location].valueReference = Reference(Jamula-village)
* extension[poverty].valueBoolean = false
* extension[groupType].valueCodeableConcept = GroupTypesCS#H "Household"
* extension[confirmation].extension[number].valueString = "Reg123456"
* extension[confirmation].extension[type].valueCodeableConcept = GroupConfirmationTypeCS#B "Municipality"