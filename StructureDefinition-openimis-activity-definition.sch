<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ActivityDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ActivityDefinition</sch:title>
    <sch:rule context="f:ActivityDefinition">
      <sch:assert test="count(f:extension[@url = 'https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/unit-price']) &gt;= 1">extension with URL = 'https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/unit-price': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/unit-price']) &lt;= 1">extension with URL = 'https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/unit-price': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/activity-definition-level']) &lt;= 1">extension with URL = 'https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/activity-definition-level': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:subtitle) &lt;= 0">subtitle: maximum cardinality of 'subtitle' is 0</sch:assert>
      <sch:assert test="count(f:experimental) &lt;= 0">experimental: maximum cardinality of 'experimental' is 0</sch:assert>
      <sch:assert test="count(f:subject[x]) &lt;= 0">subject[x]: maximum cardinality of 'subject[x]' is 0</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:publisher) &lt;= 0">publisher: maximum cardinality of 'publisher' is 0</sch:assert>
      <sch:assert test="count(f:contact) &lt;= 0">contact: maximum cardinality of 'contact' is 0</sch:assert>
      <sch:assert test="count(f:description) &lt;= 0">description: maximum cardinality of 'description' is 0</sch:assert>
      <sch:assert test="count(f:jurisdiction) &lt;= 0">jurisdiction: maximum cardinality of 'jurisdiction' is 0</sch:assert>
      <sch:assert test="count(f:purpose) &lt;= 0">purpose: maximum cardinality of 'purpose' is 0</sch:assert>
      <sch:assert test="count(f:usage) &lt;= 0">usage: maximum cardinality of 'usage' is 0</sch:assert>
      <sch:assert test="count(f:copyright) &lt;= 0">copyright: maximum cardinality of 'copyright' is 0</sch:assert>
      <sch:assert test="count(f:approvalDate) &lt;= 0">approvalDate: maximum cardinality of 'approvalDate' is 0</sch:assert>
      <sch:assert test="count(f:lastReviewDate) &lt;= 0">lastReviewDate: maximum cardinality of 'lastReviewDate' is 0</sch:assert>
      <sch:assert test="count(f:effectivePeriod) &lt;= 0">effectivePeriod: maximum cardinality of 'effectivePeriod' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 0">author: maximum cardinality of 'author' is 0</sch:assert>
      <sch:assert test="count(f:editor) &lt;= 0">editor: maximum cardinality of 'editor' is 0</sch:assert>
      <sch:assert test="count(f:reviewer) &lt;= 0">reviewer: maximum cardinality of 'reviewer' is 0</sch:assert>
      <sch:assert test="count(f:endorser) &lt;= 0">endorser: maximum cardinality of 'endorser' is 0</sch:assert>
      <sch:assert test="count(f:relatedArtifact) &lt;= 0">relatedArtifact: maximum cardinality of 'relatedArtifact' is 0</sch:assert>
      <sch:assert test="count(f:library) &lt;= 0">library: maximum cardinality of 'library' is 0</sch:assert>
      <sch:assert test="count(f:profile) &lt;= 0">profile: maximum cardinality of 'profile' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:intent) &lt;= 0">intent: maximum cardinality of 'intent' is 0</sch:assert>
      <sch:assert test="count(f:priority) &lt;= 0">priority: maximum cardinality of 'priority' is 0</sch:assert>
      <sch:assert test="count(f:doNotPerform) &lt;= 0">doNotPerform: maximum cardinality of 'doNotPerform' is 0</sch:assert>
      <sch:assert test="count(f:location) &lt;= 0">location: maximum cardinality of 'location' is 0</sch:assert>
      <sch:assert test="count(f:participant) &lt;= 0">participant: maximum cardinality of 'participant' is 0</sch:assert>
      <sch:assert test="count(f:product[x]) &lt;= 0">product[x]: maximum cardinality of 'product[x]' is 0</sch:assert>
      <sch:assert test="count(f:quantity) &lt;= 0">quantity: maximum cardinality of 'quantity' is 0</sch:assert>
      <sch:assert test="count(f:dosage) &lt;= 0">dosage: maximum cardinality of 'dosage' is 0</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:specimenRequirement) &lt;= 0">specimenRequirement: maximum cardinality of 'specimenRequirement' is 0</sch:assert>
      <sch:assert test="count(f:observationRequirement) &lt;= 0">observationRequirement: maximum cardinality of 'observationRequirement' is 0</sch:assert>
      <sch:assert test="count(f:observationResultRequirement) &lt;= 0">observationResultRequirement: maximum cardinality of 'observationResultRequirement' is 0</sch:assert>
      <sch:assert test="count(f:transform) &lt;= 0">transform: maximum cardinality of 'transform' is 0</sch:assert>
      <sch:assert test="count(f:dynamicValue) &lt;= 0">dynamicValue: maximum cardinality of 'dynamicValue' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ActivityDefinition/f:identifier</sch:title>
    <sch:rule context="f:ActivityDefinition/f:identifier">
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
    <sch:title>f:ActivityDefinition/f:identifier/f:type</sch:title>
    <sch:rule context="f:ActivityDefinition/f:identifier/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ActivityDefinition/f:identifier/f:type/f:coding</sch:title>
    <sch:rule context="f:ActivityDefinition/f:identifier/f:type/f:coding">
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
    <sch:title>f:ActivityDefinition/f:useContext</sch:title>
    <sch:rule context="f:ActivityDefinition/f:useContext">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ActivityDefinition/f:useContext/f:value[x] 1</sch:title>
    <sch:rule context="f:ActivityDefinition/f:useContext/f:value[x]">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 2">coding: maximum cardinality of 'coding' is 2</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 2">coding: maximum cardinality of 'coding' is 2</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 2">coding: maximum cardinality of 'coding' is 2</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ActivityDefinition/f:timing[x]/f:repeat 1</sch:title>
    <sch:rule context="f:ActivityDefinition/f:timing[x]/f:repeat">
      <sch:assert test="count(f:frequency) &gt;= 1">frequency: minimum cardinality of 'frequency' is 1</sch:assert>
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:periodUnit) &gt;= 1">periodUnit: minimum cardinality of 'periodUnit' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
