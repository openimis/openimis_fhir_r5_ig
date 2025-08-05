
Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}


Instance: openIMISCapabilityStatement
InstanceOf: CapabilityStatement
Title: "openIMIS Capability Statement"
Usage: #definition
* name = "openIMISCapabilityStatement"
* description = "Capability Statement for openIMIS FHIR R5 Implementation Guide"
* rest.mode = #server
* rest.security.service = http://hl7.org/fhir/restful-security-service#OAuth "OAuth"
* status = #draft
* date = "2022-05-24"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json

// ActivityDefinition requirements
* insert SupportResource(ActivityDefinition, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-activitiy-definition, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Location-identifier, #token, #SHALL)

 // Claim requirements
* insert SupportResource(Claim, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-claim, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Claim-identifier, #token, #SHALL)

 // ClaimResponse requirements
* insert SupportResource(ClaimResponse, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-claim-response, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Claim-identifier, #token, #SHALL)

// Communication requirements
* insert SupportResource(Communication, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-communication, #SHALL)
* insert SupportInteraction(#create, #SHALL)

// CommunicationRequest requirements
* insert SupportResource(CommunicationRequest, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-communication-request, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Claim-identifier, #token, #SHALL)

// Contract requirements
* insert SupportResource(Contract, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-contract, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Practitioner-identifier, #token, #SHALL)

// Coverage requirements
* insert SupportResource(Coverage, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-coverage, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)

// CoverageEligibilityRequest requirements
* insert SupportResource(CoverageEligibilityRequest, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-coverage-eligibility-request, #SHALL)
* insert SupportInteraction(#create, #SHALL)

// Group requirements
* insert SupportResource(Group, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-group, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Group-identifier, #token, #SHALL)

// Organization requirements
* insert SupportResource(Organization, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-health-facility-organization, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-policy-holder-organization, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-insurance-organization, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Organization-identifier, #token, #SHALL)

// InsurancePlan requirements
* insert SupportResource(InsurancePlan, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-insurance-plan, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/InsurancePlan-identifier, #token, #SHALL)

// Invoice requirements
* insert SupportResource(Invoice, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-invoice-invoice, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-invoice-bill, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)

// Location  requirements
* insert SupportResource(Location, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-location, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Location-identifier, #token, #SHALL)

// Medication requirements
* insert SupportResource(Medication, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-medication, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Medication-identifier, #token, #SHALL)

// Patient requirements
* insert SupportResource(Patient, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-patient, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#update, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, #token, #SHALL)

// Practitioner requirements
* insert SupportResource(Practitioner, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-claim-administrator-practitioner, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-enrolment-officer-practitioner, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Practitioner-identifier, #token, #SHALL)

// PractitionerRole requirements
* insert SupportResource(PractitionerRole, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-claim-administrator-practitioner-role, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-enrolment-officer-practitioner-role, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier, #token, #SHALL)

// Subscription requirements
* insert SupportResource(Subscription, #SHALL)
* insert SupportProfile(https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/openimis-subscription, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#update, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#delete, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)

