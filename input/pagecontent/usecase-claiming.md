In this use case, a Point of Service (PoS) is submitting a claim. 

The following code systems are involved in this workflow:
- [diagnosis](CodeSystem-diagnosis-ICD10-level1.html) list configured in openIMIS (ICD10 level 1 diagnosis is provided as an example)

The following resources are involved in this workflow:
- [ActivityDefinition](StructureDefinition-openimis-activitiy-definition.html) for the reference to the medical service
- [Medication](StructureDefinition-openimis-medication.html) for the reference to the medical item
- [Practitioner](StructureDefinition-openimis-claim-administrator-practitioner.html) for the reference to the Claim Administrator submitting the claim 
- [Organization](StructureDefinition-openimis-health-facility-organization.html) for the reference to the Health Facility providing the medical services and items

The process is done in two steps:
1. Synchronization of the openIMIS configuration referenced by the necessary resources.
2. Posting the Patients (members of the family), Group (the family) and Contract (enrolment information).

{% include usecase-claiming.svg %}
