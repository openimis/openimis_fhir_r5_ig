// This is the profile for openIMIS Contract 
// Only for POST 
Instance: InformalSectorContract
InstanceOf: OpenIMISContract
Description: """
            * Example of a contract for the Informal Sector enrolment  
            """

* status = FHIRContractResourceStatusCodes#executed "Executed"
* issued = "2021-07-28"

* subject = Reference(doe-family) // add Organization and Insuree

* author = Reference(Roberts-Jeb-EO)

* scope = ContractScopeCS#informal "Informal Sector"
* term[+] 
  * offer
    * party 
      * reference = Reference(jane-doe)
      * role = ContractResourcePartyRoleCS#beneficiary "Beneficiary"
  * asset 
    * typeReference[0] = Reference(jane-doe)
    * typeReference[+] = Reference(john-doe)
    * period 
      * start = "2021-07-01"
      * end = "2022-06-30"
    * usePeriod 
      * start = "2021-07-28"
      * end = "2022-06-30"
    * valuedItem 
      * entityReference = Reference(RX01)
      * net 
        * value = 1000
        * currency = CurrencyCode#EUR "Euro"
    * extension[premium][0]
      * extension[payer].valueCodeableConcept = ContractPremiumPayerCS#beneficiary "Beneficiary"
      * extension[category].valueCodeableConcept = ContractPremiumCategoryCS#C "Contribution and Others"
      * extension[amount].valueMoney
        * value = 1000
        * currency = CurrencyCode#EUR "Euro"
      * extension[receipt].valueString = "RE184"
      * extension[date].valueDate = "2021-07-28"
      * extension[type].valueCodeableConcept = ContractPremiumTypeCS#C "Cash"


