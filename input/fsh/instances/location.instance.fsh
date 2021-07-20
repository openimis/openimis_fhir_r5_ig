Instance: Jamula-village
InstanceOf: OpenIMISLocation
Description: "Example of a Village"
//* id = "dace872d-7f56-4b79-b6ac-b62760063853"
* identifier[LocationCode].value = "R1D1M2V1"
* identifier[LocationCode].type = OpenIMISIdentifierCS#Code
* name = "Jamula"
* physicalType = LocationTypeCS#V "Village"
* partOf = Reference(Jamu-municipality)

Instance: Jamu-municipality
InstanceOf: OpenIMISLocation
Description: "Example of a municipality"
//* id = "820E1A1F-4195-445B-A14C-4F762FAD6780"
* identifier[LocationCode].value = "R1D1M2"
* identifier[LocationCode].type = OpenIMISIdentifierCS#Code
* name = "Jamu"
* physicalType = LocationTypeCS#W "Municipality/Ward"
* partOf = Reference(Jimara-district)

Instance: Jimara-district
InstanceOf: OpenIMISLocation
Description: "Example of a district"
//* id = "5345EF14-12AB-4E98-A07C-1E08D7105DF4"
* identifier[LocationCode].value = "R1D1"
* identifier[LocationCode].type = OpenIMISIdentifierCS#Code
* name = "Jimara"
* physicalType = LocationTypeCS#D "District"
* partOf = Reference(Upper-River-Region)

Instance: Upper-River-Region
InstanceOf: OpenIMISLocation
Description: "Example of a Region"
//* id = "75250515-40D7-4C77-BAFE-A2C65FFC5A72"
* identifier[LocationCode].value = "R1"
* identifier[LocationCode].type = OpenIMISIdentifierCS#Code
* name = "Upper River Region"
* physicalType = LocationTypeCS#R "Region"
