Extension: AddressMunicipalityExtension
Id:        address-municipality
Title:    "Municipality (Address)"
Description: "The location level between District and City/Village"
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/StructureDefinition-address-municipality"
* insert ExtensionContext(Address)
* value[x] only string

Extension: AddressLocationReferenceExtension
Id:        address-location-reference
Title:    "Location Reference (Address)"
Description: "The reference to adress location for City/Village level"
* ^url = "https://openimis.github.io/openimis_fhir_r4_ig/StructureDefinition-address-location-reference"
* insert ExtensionContext(Address)
* insert ExtensionContext(Group)
* value[x] only Reference(Location)