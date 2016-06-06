<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile HSPC Standard Lab Observation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-reporting-priority']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-reporting-priority': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-delta-flag']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-delta-flag': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-verified']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-verified': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/hspc-updated']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/hspc-updated': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:referenceRange) &gt;= 1">referenceRange: minimum cardinality of 'referenceRange' is 1</sch:assert>
      <sch:assert test="count(f:referenceRange) &lt;= 1">referenceRange: maximum cardinality of 'referenceRange' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="not(exists(f:value)) or not(count(for $coding in f:code/f:coding return parent::*/f:component/f:code/f:coding[f:code/@value=$coding/f:code/@value and f:system/@value=$coding/f:system/@value])=0)">If code is the same as a component code then the value element associated with the code SHALL NOT be present (inherited)</sch:assert>
      <sch:assert test="not(exists(f:dataAbsentReason)) or (not(exists(*[starts-with(local-name(.), 'value')])))">dataAbsentReason SHALL only be present if Observation.value[x] is not present (inherited)</sch:assert>
      <sch:assert test="(f:value or f:dataAbsentReason) and (not(f:value and f:dataAbsentReason))">Must have either a value or a dataAbsentReason but not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:valueQuantity</sch:title>
    <sch:rule context="f:Observation/f:valueQuantity">
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:unit) &gt;= 1">unit: minimum cardinality of 'unit' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:referenceRange</sch:title>
    <sch:rule context="f:Observation/f:referenceRange">
      <sch:assert test="count(f:low) &lt;= 0">low: maximum cardinality of 'low' is 0</sch:assert>
      <sch:assert test="count(f:high) &lt;= 0">high: maximum cardinality of 'high' is 0</sch:assert>
      <sch:assert test="count(f:meaning) &lt;= 0">meaning: maximum cardinality of 'meaning' is 0</sch:assert>
      <sch:assert test="count(f:age) &lt;= 0">age: maximum cardinality of 'age' is 0</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange</sch:title>
    <sch:rule context="f:Observation/f:referenceRange">
      <sch:assert test="(exists(f:low) or exists(f:high)or exists(f:text))">Must have at least a low or a high or text (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
