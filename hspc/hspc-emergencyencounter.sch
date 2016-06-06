<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile QICore-Encounter
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/encounter-reasonCancelled']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/encounter-reasonCancelled': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-extensionsconfidentiality']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-extensionsconfidentiality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-hospitalService']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-hospitalService': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-VipLevel']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-VipLevel': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-AmbulatoryStatus']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-AmbulatoryStatus': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-AdministrativeEncounterId']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-AdministrativeEncounterId': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-ChiefComplaintId']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-emergencyencounter-ChiefComplaintId': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:participant</sch:title>
    <sch:rule context="f:Encounter/f:participant">
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:location</sch:title>
    <sch:rule context="f:Encounter/f:location">
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
