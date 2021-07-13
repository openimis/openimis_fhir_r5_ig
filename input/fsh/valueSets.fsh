ValueSet: OpenIMISIdentifierVS
Id: openimis-identifiers-vs
Title: "openIMIS Identifiers Value Set"
Description: "Indicates the Identifier type"
* OpenIMISIdentifierCS#UUID  
* OpenIMISIdentifierCS#DBID  
* OpenIMISIdentifierCS#Code  

ValueSet: OpenIMISMaritalStatusVS
Id: openimis-marital-status-vs
Title: "openIMIS Marital Status Value Set"
Description: "Indicates the Marital status of an Insuree"
/* codes from valueset MaritalStatus
* exclude MaritalStatus#A
* exclude MaritalStatus#I
* exclude MaritalStatus#L
* exclude MaritalStatus#P
* exclude MaritalStatus#T
* exclude MaritalStatus#U */
* MaritalStatusCS#M "Married"
* MaritalStatusCS#S "Single"
* MaritalStatusCS#D "Divorced"
* MaritalStatusCS#W "Widowed"
* MaritalStatusCS#UNK "unknown"