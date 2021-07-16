Extension: AddressMunicipality
Id:        address-municipality-ext
Title:    "Address Municipality Location"
Description: "The location level between District and City/Village"
* insert ExtensionContext(Address)
* value[x] only string

Extension: AddressLocationReference
Id:        address-location-reference-ext
Title:    "Address Location Reference"
Description: "The reference to adress location for City/Village level"
* insert ExtensionContext(Address)
* value[x] only Reference(Location)