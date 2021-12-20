In this use case, a Point of Service (PoS) is enrolling a Family/Group within openIMIS. 

The following code systems are involved in this workflow:
- [patient-education-level](CodeSystem-patient-education-level.html) for patient's education level
- [patient-profession](CodeSystem-patient-profession.html) for the patient's profession
- [patient-identification-type](CodeSystem-patient-identification-types.html) for patient's identification type
- [patient-contact-relationship](CodeSystem-patient-contact-relationship.html) for the patient's relationship (dependent) with the policy beneficiary 
- [group-type](CodeSystem-group-types.html) for the family/group type
- [group-confirmation-type](CodeSystem-group-confirmation-type.html) for the family/group confirmation type

The following resources are involved in this workflow:
- [Location](StructureDefinition-openimis-location.html) for the location address 
- [InsurancePlan](StructureDefinition-openimis-insurance-plan.html) for the list of available insurance products
- [Practitioner](StructureDefinition-openimis-enrolment-officer-practitioner.html) for the reference to the Enrollment Officer submitting the enrollment 

The process is done in two steps:
1. Synchronization of the openIMIS configuration referenced by the necessary resources.
2. Posting the Patients (members of the family), Group (the family) and Contract (enrolment information).

{% include usecase-enrollment.svg %}
