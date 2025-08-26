<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CoverageEligibilityResponse
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse">
      <sch:assert test="count(f:purpose) &lt;= 1">purpose: maximum cardinality of 'purpose' is 1</sch:assert>
      <sch:assert test="count(f:serviced[x]) &lt;= 0">serviced[x]: maximum cardinality of 'serviced[x]' is 0</sch:assert>
      <sch:assert test="count(f:requestor) &lt;= 0">requestor: maximum cardinality of 'requestor' is 0</sch:assert>
      <sch:assert test="count(f:disposition) &lt;= 0">disposition: maximum cardinality of 'disposition' is 0</sch:assert>
      <sch:assert test="count(f:preAuthRef) &lt;= 0">preAuthRef: maximum cardinality of 'preAuthRef' is 0</sch:assert>
      <sch:assert test="count(f:form) &lt;= 0">form: maximum cardinality of 'form' is 0</sch:assert>
      <sch:assert test="count(f:error) &lt;= 0">error: maximum cardinality of 'error' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:identifier</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:identifier">
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
    <sch:title>f:CoverageEligibilityResponse/f:identifier/f:type</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:identifier/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:identifier/f:type/f:coding</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:identifier/f:type/f:coding">
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
    <sch:title>f:CoverageEligibilityResponse/f:insurance</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance">
      <sch:assert test="count(f:inforce) &lt;= 0">inforce: maximum cardinality of 'inforce' is 0</sch:assert>
      <sch:assert test="count(f:benefitPeriod) &gt;= 1">benefitPeriod: minimum cardinality of 'benefitPeriod' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:insurance/f:benefitPeriod</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance/f:benefitPeriod">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &gt;= 1">end: minimum cardinality of 'end' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:insurance/f:item</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance/f:item">
      <sch:assert test="count(f:modifier) &lt;= 0">modifier: maximum cardinality of 'modifier' is 0</sch:assert>
      <sch:assert test="count(f:provider) &lt;= 0">provider: maximum cardinality of 'provider' is 0</sch:assert>
      <sch:assert test="count(f:network) &lt;= 0">network: maximum cardinality of 'network' is 0</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 0">unit: maximum cardinality of 'unit' is 0</sch:assert>
      <sch:assert test="count(f:term) &lt;= 0">term: maximum cardinality of 'term' is 0</sch:assert>
      <sch:assert test="count(f:authorizationRequired) &lt;= 0">authorizationRequired: maximum cardinality of 'authorizationRequired' is 0</sch:assert>
      <sch:assert test="count(f:authorizationSupporting) &lt;= 0">authorizationSupporting: maximum cardinality of 'authorizationSupporting' is 0</sch:assert>
      <sch:assert test="count(f:authorizationUrl) &lt;= 0">authorizationUrl: maximum cardinality of 'authorizationUrl' is 0</sch:assert>
      <sch:assert test="count(f:productOrService) &lt;= 0">productOrService: maximum cardinality of 'productOrService' is 0</sch:assert>
      <sch:assert test="count(f:modifier) &lt;= 0">modifier: maximum cardinality of 'modifier' is 0</sch:assert>
      <sch:assert test="count(f:provider) &lt;= 0">provider: maximum cardinality of 'provider' is 0</sch:assert>
      <sch:assert test="count(f:excluded) &lt;= 0">excluded: maximum cardinality of 'excluded' is 0</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:description) &gt;= 1">description: minimum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:network) &lt;= 0">network: maximum cardinality of 'network' is 0</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 0">unit: maximum cardinality of 'unit' is 0</sch:assert>
      <sch:assert test="count(f:term) &lt;= 0">term: maximum cardinality of 'term' is 0</sch:assert>
      <sch:assert test="count(f:authorizationRequired) &lt;= 0">authorizationRequired: maximum cardinality of 'authorizationRequired' is 0</sch:assert>
      <sch:assert test="count(f:authorizationSupporting) &lt;= 0">authorizationSupporting: maximum cardinality of 'authorizationSupporting' is 0</sch:assert>
      <sch:assert test="count(f:authorizationUrl) &lt;= 0">authorizationUrl: maximum cardinality of 'authorizationUrl' is 0</sch:assert>
      <sch:assert test="count(f:category) &lt;= 0">category: maximum cardinality of 'category' is 0</sch:assert>
      <sch:assert test="count(f:productOrService) &gt;= 1">productOrService: minimum cardinality of 'productOrService' is 1</sch:assert>
      <sch:assert test="count(f:modifier) &lt;= 0">modifier: maximum cardinality of 'modifier' is 0</sch:assert>
      <sch:assert test="count(f:provider) &lt;= 0">provider: maximum cardinality of 'provider' is 0</sch:assert>
      <sch:assert test="count(f:excluded) &gt;= 1">excluded: minimum cardinality of 'excluded' is 1</sch:assert>
      <sch:assert test="count(f:network) &lt;= 0">network: maximum cardinality of 'network' is 0</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 0">unit: maximum cardinality of 'unit' is 0</sch:assert>
      <sch:assert test="count(f:term) &lt;= 0">term: maximum cardinality of 'term' is 0</sch:assert>
      <sch:assert test="count(f:authorizationRequired) &lt;= 0">authorizationRequired: maximum cardinality of 'authorizationRequired' is 0</sch:assert>
      <sch:assert test="count(f:authorizationSupporting) &lt;= 0">authorizationSupporting: maximum cardinality of 'authorizationSupporting' is 0</sch:assert>
      <sch:assert test="count(f:authorizationUrl) &lt;= 0">authorizationUrl: maximum cardinality of 'authorizationUrl' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:insurance/f:item/f:category</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance/f:item/f:category">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:insurance/f:item/f:category/f:coding</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance/f:item/f:category/f:coding">
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
    <sch:title>f:CoverageEligibilityResponse/f:insurance/f:item/f:benefit</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance/f:item/f:benefit">
      <sch:assert test="count(f:used[x]) &lt;= 0">used[x]: maximum cardinality of 'used[x]' is 0</sch:assert>
      <sch:assert test="count(f:allowed[x]) &gt;= 1">allowed[x]: minimum cardinality of 'allowed[x]' is 1</sch:assert>
      <sch:assert test="count(f:used[x]) &lt;= 0">used[x]: maximum cardinality of 'used[x]' is 0</sch:assert>
      <sch:assert test="count(f:allowed[x]) &gt;= 1">allowed[x]: minimum cardinality of 'allowed[x]' is 1</sch:assert>
      <sch:assert test="count(f:used[x]) &lt;= 0">used[x]: maximum cardinality of 'used[x]' is 0</sch:assert>
      <sch:assert test="count(f:used[x]) &lt;= 0">used[x]: maximum cardinality of 'used[x]' is 0</sch:assert>
      <sch:assert test="count(f:used[x]) &lt;= 0">used[x]: maximum cardinality of 'used[x]' is 0</sch:assert>
      <sch:assert test="count(f:used[x]) &lt;= 0">used[x]: maximum cardinality of 'used[x]' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:insurance/f:item/f:benefit/f:allowed[x] 1</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance/f:item/f:benefit/f:allowed[x]">
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:insurance/f:item/f:productOrService</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance/f:item/f:productOrService">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 0">coding: maximum cardinality of 'coding' is 0</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
