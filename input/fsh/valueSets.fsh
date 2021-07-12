ValueSet: OpenIMISIdentifierVS
Id: openimis-identifiers-vs
Title: "openIMIS Identifiers Value Set"
Description: "Indicates the Identifier type"
* OpenIMISIdentifierCS#UUID  
* OpenIMISIdentifierCS#DBID  
* OpenIMISIdentifierCS#Code  

Alias: MaritalStatus = http://hl7.org/fhir/ValueSet/marital-status

ValueSet: OpenIMISMaritalStatusVS
Id: openimis-marital-status-vs
Title: "openIMIS Marital Status Value Set"
Description: "Indicates the Marital status of an Insuree"
* codes from valueset MaritalStatus
* exclude MaritalStatus#A
* exclude MaritalStatus#I
* exclude MaritalStatus#L
* exclude MaritalStatus#P
* exclude MaritalStatus#T
* exclude MaritalStatus#U
//* #M  "Married"
//* #S "Single"
//* #D "Divorced"
//* #W "Widowed"
//* #UNK "unknown"