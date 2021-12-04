// This is the profile for openIMIS Practitioner 
// Mapping is done throught Enrolment Officer openIMIS entities
Instance: ContributionInvoiceSubscription
InstanceOf: OpenIMISSubscription
Description: "Example of openIMIS Subscription request."

* id = "ContributionInvoiceSubscription"
* status = FHIRSubscriptionStatus#requested "Requested"
* reason = "Accounting system integration"
* criteria = "Invoice?type=contribution"
* channel 
  * type = FHIRSubscriptionChannelType#rest-hook "Rest Hook"
  * endpoint = "https://api.accounting.org/invoice/contribution"
  * header[+] = "Authorization: Bearer secret-token-abc-123"
