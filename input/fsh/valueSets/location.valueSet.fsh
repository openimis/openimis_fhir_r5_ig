
// Value Set for Location Types
ValueSet: LocationTypeVS
Id:         location-type
Title:     "Location Type (Location)"
Description: "Indicates the location type. Values defined by openIMIS. Cannot be extended."
* ^url =  https://openimis.github.io/openimis_fhir_r4_ig/ValueSet-location-type
* exclude codes from valueset FHIRLocationTypeVS
* LocationTypeCS#R "Region"
* LocationTypeCS#D "District"
* LocationTypeCS#W "Municipality/Ward"
* LocationTypeCS#V "City/Village"
