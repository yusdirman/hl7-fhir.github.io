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
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-hospitalService']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-hospitalService': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-VipLevel']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-VipLevel': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-AmbulatoryStatus']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-AmbulatoryStatus': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-TransportationMode']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-TransportationMode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-TransportationMode']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-TransportationMode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-AdministrativeEncounterId']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-AdministrativeEncounterId': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:participant</sch:title>
    <sch:rule context="f:Encounter/f:participant">
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:length</sch:title>
    <sch:rule context="f:Encounter/f:length">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:comparator) &lt;= 1">comparator: maximum cardinality of 'comparator' is 1</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 1">unit: maximum cardinality of 'unit' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:indication</sch:title>
    <sch:rule context="f:Encounter/f:indication">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meta) &lt;= 1">meta: maximum cardinality of 'meta' is 1</sch:assert>
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/condition-criticality']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/condition-criticality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-extensionsprimaryIndicator']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-extensionsprimaryIndicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:patient) &gt;= 1">patient: minimum cardinality of 'patient' is 1</sch:assert>
      <sch:assert test="count(f:patient) &lt;= 1">patient: maximum cardinality of 'patient' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 1">encounter: maximum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:asserter) &lt;= 1">asserter: maximum cardinality of 'asserter' is 1</sch:assert>
      <sch:assert test="count(f:dateRecorded) &lt;= 1">dateRecorded: maximum cardinality of 'dateRecorded' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:clinicalStatus) &lt;= 1">clinicalStatus: maximum cardinality of 'clinicalStatus' is 1</sch:assert>
      <sch:assert test="count(f:verificationStatus) &gt;= 1">verificationStatus: minimum cardinality of 'verificationStatus' is 1</sch:assert>
      <sch:assert test="count(f:verificationStatus) &lt;= 1">verificationStatus: maximum cardinality of 'verificationStatus' is 1</sch:assert>
      <sch:assert test="count(f:severity) &lt;= 1">severity: maximum cardinality of 'severity' is 1</sch:assert>
      <sch:assert test="count(f:onset[x]) &lt;= 1">onset[x]: maximum cardinality of 'onset[x]' is 1</sch:assert>
      <sch:assert test="count(f:abatement[x]) &lt;= 1">abatement[x]: maximum cardinality of 'abatement[x]' is 1</sch:assert>
      <sch:assert test="count(f:stage) &lt;= 1">stage: maximum cardinality of 'stage' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:indication/f:stage</sch:title>
    <sch:rule context="f:Encounter/f:indication/f:stage">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:summary) &lt;= 1">summary: maximum cardinality of 'summary' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Encounter.indication.stage</sch:title>
    <sch:rule context="f:Encounter/f:indication/f:stage">
      <sch:assert test="exists(f:summary) or exists(f:assessment)">Stage SHALL have summary or assessment (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:indication/f:evidence</sch:title>
    <sch:rule context="f:Encounter/f:indication/f:evidence">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Encounter.indication.evidence</sch:title>
    <sch:rule context="f:Encounter/f:indication/f:evidence">
      <sch:assert test="exists(f:code) or exists(f:detail)">evidence SHALL have code or details (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:hospitalization</sch:title>
    <sch:rule context="f:Encounter/f:hospitalization">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-PreAdmitTestInd']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-PreAdmitTestInd': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-ReAdmitInd']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-opencounter-ReAdmitInd': maximum cardinality of 'extension' is 1</sch:assert>
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
