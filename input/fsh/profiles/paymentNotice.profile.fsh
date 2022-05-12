// This is the profile for openIMIS Group 
// Mapping is done throught Insuree and Family openIMIS entities
Profile: OpenIMISPaymentNotice
Parent: PaymentNotice
Id: openimis-payment-notice
Title: "openIMIS Payment Notice"
Description: "Submit payment notice."

* identifier 1..1
  * type 1..1  
  * value 1..1
* identifier.type.coding.code = OpenIMISIdentifierCS#UUID
  * ^short = "PaymentNotice UUID"
  * ^definition = "Unique UUID."

* status 1..1
* request 1..1 
* request only Reference(OpenIMISInvoice or OpenIMISBill)

* response 0..0

* created 1..1
* provider 0..0
* payment 1..1
  * ^short = "Payment Reconciliation"
  * ^definition = "External URL to Payment Reconciliation."

* paymentDate 1..1
* payee 0..0
* recipient 1..1
* recipient only Reference(OpenIMISInsuranceOrganization)
* amount 1..1
  * value 1..1
  * currency 0..1

* paymentStatus 1..1 