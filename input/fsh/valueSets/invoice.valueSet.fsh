ValueSet: InvoiceTypeVS
Id: invoice-type
Title: "Type (Invoice)"
Description: "Indicates the Type for an Invoice. Values defined by openIMIS. Can not be extended."
* codes from system InvoiceTypeCS

ValueSet: InvoiceChargeItemVS
Id: invoice-charge-item
Title: "ChargeItem (Invoice)"
Description: "Indicates the ChargeItem for a lineItem from an Invoice. Values defined by openIMIS. Can not be extended."
* codes from system InvoiceChargeItemCS

ValueSet: InvoicePriceComponentTypeVS
Id: invoice-price-component-type
Title: "PriceComponent Type (Invoice)"
Description: "Indicates the Type for a PriceComponent from an Invoice."
* FHIRInvoicePriceComponentType#base "base price"
* FHIRInvoicePriceComponentType#discount "discount"
* FHIRInvoicePriceComponentType#deduction "deduction"
* FHIRInvoicePriceComponentType#tax "tax"

ValueSet: BillTypeVS
Id: bill-type
Title: "Type (Bill Invoice)"
Description: "Indicates the Type for Bill. Values defined by openIMIS. Can not be extended."
* codes from system BillTypeCS

ValueSet: BillChargeItemVS
Id: bill-charge-item
Title: "ChargeItem (Bill Invoice)"
Description: "Indicates the ChargeItem for a lineItem from a Bill. Values defined by openIMIS. Can not be extended."
* codes from system BillChargeItemCS
