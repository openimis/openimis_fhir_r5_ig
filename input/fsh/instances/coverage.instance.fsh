// This is the profile for openIMIS Contract 
// Only for POST 
Instance: JoeDoeCoverage
InstanceOf: OpenIMISCoverage
Description: """
            * Example of a Coverage   
            """

* identifier[UUID].value = "D30F70DF-D10B-43D4-BF31-5137C118AD84"
* identifier[UUID].type = OpenIMISIdentifierCS#UUID

* status = FHIRFinancialResourceStatusCodes#active "Active"

// ...

* beneficiary = Reference(joe-doe)

// ...

* payor = Reference(jane-doe)


// todo complete instance
