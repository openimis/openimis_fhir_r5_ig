
Extension: CoverageEnrollDateExtension
Id:        coverage-enroll-date
Title:    "Enrollment Date (Coverage)"
Description: "Indicates the date of enrollment for a Coverage. "
* insert ExtensionContext(Coverage)
* value[x] only date

Extension: CoverageEffectiveDateExtension
Id:        coverage-effective-date
Title:    "Effective Date (Coverage)"
Description: "Indicates the date from which the policy is effective"
* insert ExtensionContext(Coverage)
* value[x] only date


Extension: CoveragPolicyStatusExtension
Id:        coverage-policy-status
Title:    "Policy Status (Coverage)"
Description: "Indicates the policy status for a Coverage."
* insert ExtensionContext(Coverage)
* value[x] only CodeableConcept

