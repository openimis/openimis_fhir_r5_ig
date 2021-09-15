Extension: ClaimItemReferenceExtension
Id:        claim-item-reference
Title:    "Item Reference (Claim)"
Description: "The reference to the Medication or ActivityDefinition for an item within a Claim."
* insert ExtensionContext(BackboneElement)
* value[x] only Reference
* valueReference only Reference(OpenIMISMedication or OpenIMISActivityDefinition)