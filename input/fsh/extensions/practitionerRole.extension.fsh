Extension: PractitionerRoleSubstitutionReferenceExtension
Id:        practitioner-role-substitution-reference
Title:    "Substitution Reference (PractitionerRole)"
Description: "The reference to the Enrolment Officer that will substitute the current one after the period end."
* insert ExtensionContext(OpenIMISEnrolmentOfficerPractitioner)
* value[x] only Reference(OpenIMISEnrolmentOfficerPractitioner)