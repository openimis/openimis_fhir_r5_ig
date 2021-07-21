Extension: AddressMunicipalityExtension
Id:        address-municipality
Title:    "Municipality (Address)"
Description: "The location level between District and City/Village"
* insert ExtensionContext(Address)
* value[x] only string

Extension: AddressLocationReferenceExtension
Id:        address-location-reference
Title:    "Location Reference (Address)"
Description: "The reference to adress location for City/Village level"
* insert ExtensionContext(Address)
* value[x] only Reference(Location)