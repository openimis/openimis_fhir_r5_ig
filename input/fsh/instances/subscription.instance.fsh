// This is the profile for openIMIS Practitioner 
// Mapping is done throught Enrolment Officer openIMIS entities
Instance: ContributionInvoiceSubscription
InstanceOf: OpenIMISSubscription
Description: "Example of openIMIS Subscription request."

* id = "ContributionInvoiceSubscription"
* status = FHIRSubscriptionStatus#requested "Requested"
* reason = "Accounting system integration"
* topic = "http://example.org/fhir/SubscriptionTopic/invoice-contributions"
* endpoint = "http://example.org/webhook/openimis-contributions"
* channelType = FHIRSubscriptionChannelType#rest-hook "REST Hook" 