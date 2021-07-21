// Value Set for Location Types
ValueSet: LocationTypeVS
Id:         location-type
Title:     "Location Type (Location)"
Description: "Indicates the location type. Values defined by openIMIS. Cannot be extended."
* exclude codes from valueset FHIRLocationTypeVS
* LocationTypeCS#R "Region"
* LocationTypeCS#D "District"
* LocationTypeCS#W "Municipality/Ward"
* LocationTypeCS#V "City/Village"
