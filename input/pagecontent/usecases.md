These are the use cases supported by this Implementation Guide:

### Enrollment 

In this use case, a Point of Service (PoS) is enrolling a Family/Group within openIMIS. This is done through the Contract resource that links the Group, Patients and InsurancePlan resources. 

The process is done in two steps:
1. Synchronization of the openIMIS configuration referenced by the necessary resources.
2. Posting the Patients (members of the family), Group (the family) and Contract (enrolment information).

{% include oI-fhir-enrollment.svg %}

