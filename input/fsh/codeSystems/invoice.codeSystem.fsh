CodeSystem: InvoiceTypeCS
Id: invoice-type
Title: "Type (Invoice)"
Description: "Indicates the Type for an Invoice. Values defined by openIMIS. Can not be extended."
* #contribution "Contribution"
* #contract "Contract"
* #funding "Funding"

CodeSystem: InvoiceChargeItemCS
Id: invoice-charge-item
Title: "ChargeItem (Invoice)"
Description: "Indicates the ChargeItem for a lineItem from an Invoice. Values defined by openIMIS. Can not be extended."
* #contribution "Contribution"
* #policy "Policy"

CodeSystem: BillTypeCS
Id: bill-type
Title: "Type (Bill Invoice)"
Description: "Indicates the Type for Bill. Values defined by openIMIS. Can not be extended."
* #fee-for-service "Fee for service" "How much the insurance need to pay the HF for the fee for service health financing."
* #commission "Commission" "How much the insurance need to pay the commission to EO."
* #capitation "Capitation" "How much the insurance need to pay the HF for the capitation financing."
* #fees "Fees" "How much the insurance need to pay the payment platform for the fee for payment service."

CodeSystem: BillChargeItemCS
Id: bill-charge-item
Title: "ChargeItem (Bill Invoice)"
Description: "Indicates the ChargeItem for a lineItem from a Bill. Values defined by openIMIS. Can not be extended."
* #claim "Claim"
* #contribution "Contribution"
