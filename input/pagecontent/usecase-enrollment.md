In this use case, a Point of Service (PoS) is enrolling a Family/Group within openIMIS. This is done through the Contract resource that links the Group, Patients and InsurancePlan resources. 

The following code systems are involved in this workflow:
- [patient-education-level](CodeSystem-patient-education-level.html)
- [patient-profession](CodeSystem-patient-profession.html)
- [patient-identification-type](CodeSystem-patient-identification-types.html)
- [patient-contact-relationship](CodeSystem-patient-contact-relationship.html)
- [group-type](CodeSystem-group-types.html)
- [group-confirmation-type](CodeSystem-group-confirmation-type.html)

The following resources are involved in this workflow:
- [Location](StructureDefinition-openimis-location.html)
- [InsurancePlan](StructureDefinition-openimis-insurance-plan.html)

The process is done in two steps:
1. Synchronization of the openIMIS configuration referenced by the necessary resources.
2. Posting the Patients (members of the family), Group (the family) and Contract (enrolment information).

{% include usecase-enrollment.svg %}
