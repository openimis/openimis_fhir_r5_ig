Instance: doe-family
InstanceOf: OpenIMISGroup
Description: "Example of openIMIS Group"
* identifier[FamilyUUID].value = "D30F70DF-D10B-43D4-BF31-5137C118AD82"
* identifier[FamilyUUID].type = OpenIMISIdentifierCS#UUID
* type = GroupTypeCS#person
* actual = true
* active = true
* name = "Doe Jane"
* quantity = 2
* member[+].entity = Reference(john-doe)
* member[+].entity = Reference(jane-doe)
* extension[location].valueReference = Reference(Jamula-village)
