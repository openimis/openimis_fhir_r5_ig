In this use case, a Point of Service (PoS) is enquiring for the Insuree's policy details. 

The following resources are involved in this workflow:
- [ActivityDefinition](StructureDefinition-openimis-activitiy-definition.html) for the reference to the medical service
- [Medication](StructureDefinition-openimis-medication.html) for the reference to the medical item
- [coverageEligibilityRequest](StructureDefinition-openimis-coverage-eligibility-request.html) to post information about the enquire
- [coverageEligibilityResponse](StructureDefinition-openimis-coverage-eligibility-response.html) to get the response about the enquire

{% include usecase-enquire.svg %}
