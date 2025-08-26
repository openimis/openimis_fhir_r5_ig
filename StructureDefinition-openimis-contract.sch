<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Contract
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Contract</sch:title>
    <sch:rule context="f:Contract">
      <sch:assert test="count(f:url) &lt;= 0">url: maximum cardinality of 'url' is 0</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:legalState) &lt;= 0">legalState: maximum cardinality of 'legalState' is 0</sch:assert>
      <sch:assert test="count(f:instantiatesCanonical) &lt;= 0">instantiatesCanonical: maximum cardinality of 'instantiatesCanonical' is 0</sch:assert>
      <sch:assert test="count(f:instantiatesUri) &lt;= 0">instantiatesUri: maximum cardinality of 'instantiatesUri' is 0</sch:assert>
      <sch:assert test="count(f:contentDerivative) &lt;= 0">contentDerivative: maximum cardinality of 'contentDerivative' is 0</sch:assert>
      <sch:assert test="count(f:issued) &gt;= 1">issued: minimum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:applies) &lt;= 0">applies: maximum cardinality of 'applies' is 0</sch:assert>
      <sch:assert test="count(f:expirationType) &lt;= 0">expirationType: maximum cardinality of 'expirationType' is 0</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:authority) &lt;= 1">authority: maximum cardinality of 'authority' is 1</sch:assert>
      <sch:assert test="count(f:domain) &lt;= 0">domain: maximum cardinality of 'domain' is 0</sch:assert>
      <sch:assert test="count(f:site) &lt;= 0">site: maximum cardinality of 'site' is 0</sch:assert>
      <sch:assert test="count(f:name) &lt;= 0">name: maximum cardinality of 'name' is 0</sch:assert>
      <sch:assert test="count(f:title) &lt;= 0">title: maximum cardinality of 'title' is 0</sch:assert>
      <sch:assert test="count(f:subtitle) &lt;= 0">subtitle: maximum cardinality of 'subtitle' is 0</sch:assert>
      <sch:assert test="count(f:alias) &lt;= 0">alias: maximum cardinality of 'alias' is 0</sch:assert>
      <sch:assert test="count(f:scope) &gt;= 1">scope: minimum cardinality of 'scope' is 1</sch:assert>
      <sch:assert test="count(f:topic[x]) &lt;= 0">topic[x]: maximum cardinality of 'topic[x]' is 0</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:subType) &lt;= 0">subType: maximum cardinality of 'subType' is 0</sch:assert>
      <sch:assert test="count(f:contentDefinition) &lt;= 0">contentDefinition: maximum cardinality of 'contentDefinition' is 0</sch:assert>
      <sch:assert test="count(f:term) &gt;= 1">term: minimum cardinality of 'term' is 1</sch:assert>
      <sch:assert test="count(f:supportingInfo) &lt;= 0">supportingInfo: maximum cardinality of 'supportingInfo' is 0</sch:assert>
      <sch:assert test="count(f:relevantHistory) &lt;= 0">relevantHistory: maximum cardinality of 'relevantHistory' is 0</sch:assert>
      <sch:assert test="count(f:signer) &lt;= 0">signer: maximum cardinality of 'signer' is 0</sch:assert>
      <sch:assert test="count(f:friendly) &lt;= 0">friendly: maximum cardinality of 'friendly' is 0</sch:assert>
      <sch:assert test="count(f:legal) &lt;= 0">legal: maximum cardinality of 'legal' is 0</sch:assert>
      <sch:assert test="count(f:rule) &lt;= 0">rule: maximum cardinality of 'rule' is 0</sch:assert>
      <sch:assert test="count(f:legallyBinding[x]) &lt;= 0">legallyBinding[x]: maximum cardinality of 'legallyBinding[x]' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:identifier</sch:title>
    <sch:rule context="f:Contract/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:identifier/f:type</sch:title>
    <sch:rule context="f:Contract/f:identifier/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:identifier/f:type/f:coding</sch:title>
    <sch:rule context="f:Contract/f:identifier/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:term</sch:title>
    <sch:rule context="f:Contract/f:term">
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 0">issued: maximum cardinality of 'issued' is 0</sch:assert>
      <sch:assert test="count(f:applies) &lt;= 0">applies: maximum cardinality of 'applies' is 0</sch:assert>
      <sch:assert test="count(f:topic[x]) &lt;= 0">topic[x]: maximum cardinality of 'topic[x]' is 0</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:subType) &lt;= 0">subType: maximum cardinality of 'subType' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:securityLabel) &lt;= 0">securityLabel: maximum cardinality of 'securityLabel' is 0</sch:assert>
      <sch:assert test="count(f:asset) &gt;= 1">asset: minimum cardinality of 'asset' is 1</sch:assert>
      <sch:assert test="count(f:action) &lt;= 0">action: maximum cardinality of 'action' is 0</sch:assert>
      <sch:assert test="count(f:group) &lt;= 0">group: maximum cardinality of 'group' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:term/f:offer</sch:title>
    <sch:rule context="f:Contract/f:term/f:offer">
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:party) &gt;= 1">party: minimum cardinality of 'party' is 1</sch:assert>
      <sch:assert test="count(f:party) &lt;= 1">party: maximum cardinality of 'party' is 1</sch:assert>
      <sch:assert test="count(f:topic) &lt;= 0">topic: maximum cardinality of 'topic' is 0</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:decision) &lt;= 0">decision: maximum cardinality of 'decision' is 0</sch:assert>
      <sch:assert test="count(f:decisionMode) &lt;= 0">decisionMode: maximum cardinality of 'decisionMode' is 0</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 0">answer: maximum cardinality of 'answer' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 0">linkId: maximum cardinality of 'linkId' is 0</sch:assert>
      <sch:assert test="count(f:securityLabelNumber) &lt;= 0">securityLabelNumber: maximum cardinality of 'securityLabelNumber' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:term/f:offer/f:party</sch:title>
    <sch:rule context="f:Contract/f:term/f:offer/f:party">
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:term/f:asset</sch:title>
    <sch:rule context="f:Contract/f:term/f:asset">
      <sch:assert test="count(f:scope) &lt;= 0">scope: maximum cardinality of 'scope' is 0</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:typeReference) &gt;= 1">typeReference: minimum cardinality of 'typeReference' is 1</sch:assert>
      <sch:assert test="count(f:subtype) &lt;= 0">subtype: maximum cardinality of 'subtype' is 0</sch:assert>
      <sch:assert test="count(f:relationship) &lt;= 0">relationship: maximum cardinality of 'relationship' is 0</sch:assert>
      <sch:assert test="count(f:context) &lt;= 0">context: maximum cardinality of 'context' is 0</sch:assert>
      <sch:assert test="count(f:condition) &lt;= 0">condition: maximum cardinality of 'condition' is 0</sch:assert>
      <sch:assert test="count(f:periodType) &lt;= 0">periodType: maximum cardinality of 'periodType' is 0</sch:assert>
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:usePeriod) &gt;= 1">usePeriod: minimum cardinality of 'usePeriod' is 1</sch:assert>
      <sch:assert test="count(f:usePeriod) &lt;= 1">usePeriod: maximum cardinality of 'usePeriod' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 0">linkId: maximum cardinality of 'linkId' is 0</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 0">answer: maximum cardinality of 'answer' is 0</sch:assert>
      <sch:assert test="count(f:securityLabelNumber) &lt;= 0">securityLabelNumber: maximum cardinality of 'securityLabelNumber' is 0</sch:assert>
      <sch:assert test="count(f:valuedItem) &gt;= 1">valuedItem: minimum cardinality of 'valuedItem' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:term/f:asset/f:period</sch:title>
    <sch:rule context="f:Contract/f:term/f:asset/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &gt;= 1">end: minimum cardinality of 'end' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:term/f:asset/f:usePeriod</sch:title>
    <sch:rule context="f:Contract/f:term/f:asset/f:usePeriod">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &gt;= 1">end: minimum cardinality of 'end' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:term/f:asset/f:valuedItem</sch:title>
    <sch:rule context="f:Contract/f:term/f:asset/f:valuedItem">
      <sch:assert test="count(f:entity[x]) &gt;= 1">entity[x]: minimum cardinality of 'entity[x]' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:effectiveTime) &lt;= 0">effectiveTime: maximum cardinality of 'effectiveTime' is 0</sch:assert>
      <sch:assert test="count(f:quantity) &lt;= 0">quantity: maximum cardinality of 'quantity' is 0</sch:assert>
      <sch:assert test="count(f:unitPrice) &lt;= 0">unitPrice: maximum cardinality of 'unitPrice' is 0</sch:assert>
      <sch:assert test="count(f:factor) &lt;= 0">factor: maximum cardinality of 'factor' is 0</sch:assert>
      <sch:assert test="count(f:points) &lt;= 0">points: maximum cardinality of 'points' is 0</sch:assert>
      <sch:assert test="count(f:net) &gt;= 1">net: minimum cardinality of 'net' is 1</sch:assert>
      <sch:assert test="count(f:payment) &lt;= 0">payment: maximum cardinality of 'payment' is 0</sch:assert>
      <sch:assert test="count(f:paymentDate) &lt;= 0">paymentDate: maximum cardinality of 'paymentDate' is 0</sch:assert>
      <sch:assert test="count(f:responsible) &lt;= 0">responsible: maximum cardinality of 'responsible' is 0</sch:assert>
      <sch:assert test="count(f:recipient) &lt;= 0">recipient: maximum cardinality of 'recipient' is 0</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 0">linkId: maximum cardinality of 'linkId' is 0</sch:assert>
      <sch:assert test="count(f:securityLabelNumber) &lt;= 0">securityLabelNumber: maximum cardinality of 'securityLabelNumber' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Contract/f:term/f:asset/f:valuedItem/f:net</sch:title>
    <sch:rule context="f:Contract/f:term/f:asset/f:valuedItem/f:net">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:currency) &lt;= 1">currency: maximum cardinality of 'currency' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
