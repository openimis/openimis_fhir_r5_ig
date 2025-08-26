<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Extension
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Extension/f:value[x] 1</sch:title>
    <sch:rule context="f:Extension/f:value[x]">
      <sch:assert test="count(f:extension[@url = 'https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/address-location-reference']) &gt;= 1">extension with URL = 'https://github.com/openimis/openimis_fhir_r5_ig/StructureDefinition/address-location-reference': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 0">postalCode: maximum cardinality of 'postalCode' is 0</sch:assert>
      <sch:assert test="count(f:country) &lt;= 0">country: maximum cardinality of 'country' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
