<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile DataElement
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:DataElement</sch:title>
    <sch:rule context="f:DataElement">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-de-effective-period']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-de-effective-period': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-de-document-reference']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-de-document-reference': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-de-administrative-status']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-de-administrative-status': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-de-administrative-status']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-de-administrative-status': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-de-change-description']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-de-change-description': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-de-submitter-org']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-de-submitter-org': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-de-submitter-org']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-de-submitter-org': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-de-registry-org']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-de-registry-org': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-de-registry-org']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-de-registry-org': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:version) &gt;= 1">version: minimum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:publisher) &gt;= 1">publisher: minimum cardinality of 'publisher' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:contact) &gt;= 1">contact: minimum cardinality of 'contact' is 1</sch:assert>
      <sch:assert test="count(f:stringency) &gt;= 1">stringency: minimum cardinality of 'stringency' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DataElement</sch:title>
    <sch:rule context="f:DataElement">
      <sch:assert test="count(f:code/f:extension[@uri='http://hl7.org/fhir/StructureDefinition/11179-de-is-data-element-concept'])=1">One and only one DataElement.code must have is-data-element-concept set to &quot;true&quot;</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:contact</sch:title>
    <sch:rule context="f:DataElement/f:contact">
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:telecom) &gt;= 1">telecom: minimum cardinality of 'telecom' is 1</sch:assert>
      <sch:assert test="count(f:telecom) &lt;= 1">telecom: maximum cardinality of 'telecom' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:useContext</sch:title>
    <sch:rule context="f:DataElement/f:useContext">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &gt;= 1">extension: minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:mapping</sch:title>
    <sch:rule context="f:DataElement/f:mapping">
      <sch:assert test="count(f:uri) &gt;= 1">uri: minimum cardinality of 'uri' is 1</sch:assert>
      <sch:assert test="count(f:uri) &gt;= 1">uri: minimum cardinality of 'uri' is 1</sch:assert>
      <sch:assert test="count(f:uri) &gt;= 1">uri: minimum cardinality of 'uri' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DataElement.mapping</sch:title>
    <sch:rule context="f:DataElement/f:mapping">
      <sch:assert test="exists(f:extension[@url='http://hl7.org/fhir/StructureDefinition/11179-objectClass']) or not(exists(f:extension[@url='http://hl7.org/fhir/StructureDefinition/11179-property']))">Property extension can only be specified if ObjectClass extension is present</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element</sch:title>
    <sch:rule context="f:DataElement/f:element">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/elementdefinition-question']) &gt;= 2">extension with URL = 'http://hl7.org/fhir/StructureDefinition/elementdefinition-question': minimum cardinality of 'extension' is 2</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/minLength']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/minLength': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/regex']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/regex': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/entryFormat']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/entryFormat': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:path) &gt;= 1">path: minimum cardinality of 'path' is 1</sch:assert>
      <sch:assert test="count(f:path) &lt;= 1">path: maximum cardinality of 'path' is 1</sch:assert>
      <sch:assert test="count(f:name) &lt;= 1">name: maximum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:label) &lt;= 1">label: maximum cardinality of 'label' is 1</sch:assert>
      <sch:assert test="count(f:slicing) &lt;= 1">slicing: maximum cardinality of 'slicing' is 1</sch:assert>
      <sch:assert test="count(f:short) &lt;= 1">short: maximum cardinality of 'short' is 1</sch:assert>
      <sch:assert test="count(f:definition) &gt;= 1">definition: minimum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:comments) &lt;= 1">comments: maximum cardinality of 'comments' is 1</sch:assert>
      <sch:assert test="count(f:requirements) &lt;= 1">requirements: maximum cardinality of 'requirements' is 1</sch:assert>
      <sch:assert test="count(f:min) &lt;= 1">min: maximum cardinality of 'min' is 1</sch:assert>
      <sch:assert test="count(f:max) &lt;= 1">max: maximum cardinality of 'max' is 1</sch:assert>
      <sch:assert test="count(f:base) &lt;= 1">base: maximum cardinality of 'base' is 1</sch:assert>
      <sch:assert test="count(f:contentReference) &lt;= 1">contentReference: maximum cardinality of 'contentReference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:defaultValue[x]) &lt;= 1">defaultValue[x]: maximum cardinality of 'defaultValue[x]' is 1</sch:assert>
      <sch:assert test="count(f:meaningWhenMissing) &lt;= 1">meaningWhenMissing: maximum cardinality of 'meaningWhenMissing' is 1</sch:assert>
      <sch:assert test="count(f:fixed[x]) &lt;= 1">fixed[x]: maximum cardinality of 'fixed[x]' is 1</sch:assert>
      <sch:assert test="count(f:pattern[x]) &lt;= 1">pattern[x]: maximum cardinality of 'pattern[x]' is 1</sch:assert>
      <sch:assert test="count(f:example[x]) &lt;= 1">example[x]: maximum cardinality of 'example[x]' is 1</sch:assert>
      <sch:assert test="count(f:minValue[x]) &lt;= 1">minValue[x]: maximum cardinality of 'minValue[x]' is 1</sch:assert>
      <sch:assert test="count(f:maxValue[x]) &lt;= 1">maxValue[x]: maximum cardinality of 'maxValue[x]' is 1</sch:assert>
      <sch:assert test="count(f:maxLength) &lt;= 1">maxLength: maximum cardinality of 'maxLength' is 1</sch:assert>
      <sch:assert test="count(f:mustSupport) &lt;= 0">mustSupport: maximum cardinality of 'mustSupport' is 0</sch:assert>
      <sch:assert test="count(f:isModifier) &lt;= 1">isModifier: maximum cardinality of 'isModifier' is 1</sch:assert>
      <sch:assert test="count(f:isSummary) &lt;= 1">isSummary: maximum cardinality of 'isSummary' is 1</sch:assert>
      <sch:assert test="count(f:binding) &lt;= 1">binding: maximum cardinality of 'binding' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DataElement.element</sch:title>
    <sch:rule context="f:DataElement/f:element">
      <sch:assert test="not(exists(f:base))">No base allowed (inherited)</sch:assert>
      <sch:assert test="not(exists(f:slicing))">No slicing allowed (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element/f:code</sch:title>
    <sch:rule context="f:DataElement/f:element/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element/f:slicing</sch:title>
    <sch:rule context="f:DataElement/f:element/f:slicing">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:ordered) &lt;= 1">ordered: maximum cardinality of 'ordered' is 1</sch:assert>
      <sch:assert test="count(f:rules) &gt;= 1">rules: minimum cardinality of 'rules' is 1</sch:assert>
      <sch:assert test="count(f:rules) &lt;= 1">rules: maximum cardinality of 'rules' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DataElement.element.slicing</sch:title>
    <sch:rule context="f:DataElement/f:element/f:slicing">
      <sch:assert test="(f:discriminator) or (f:description)">If there are no discriminators, there must be a definition (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DataElement.element.max</sch:title>
    <sch:rule context="f:DataElement/f:element/f:max">
      <sch:assert test="@value='*' or (normalize-space(@value)!='' and normalize-space(translate(@value, '0123456789',''))='')">Max SHALL be a number or &quot;*&quot; (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element/f:base</sch:title>
    <sch:rule context="f:DataElement/f:element/f:base">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:path) &gt;= 1">path: minimum cardinality of 'path' is 1</sch:assert>
      <sch:assert test="count(f:path) &lt;= 1">path: maximum cardinality of 'path' is 1</sch:assert>
      <sch:assert test="count(f:min) &gt;= 1">min: minimum cardinality of 'min' is 1</sch:assert>
      <sch:assert test="count(f:min) &lt;= 1">min: maximum cardinality of 'min' is 1</sch:assert>
      <sch:assert test="count(f:max) &gt;= 1">max: minimum cardinality of 'max' is 1</sch:assert>
      <sch:assert test="count(f:max) &lt;= 1">max: maximum cardinality of 'max' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element/f:type</sch:title>
    <sch:rule context="f:DataElement/f:element/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:versioning) &lt;= 1">versioning: maximum cardinality of 'versioning' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DataElement.element.type</sch:title>
    <sch:rule context="f:DataElement/f:element/f:type">
      <sch:assert test="not(exists(f:aggregation)) or exists(f:code[@value = 'Reference'])">Aggregation may only be specified if one of the allowed types for the element is a resource (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element/f:constraint</sch:title>
    <sch:rule context="f:DataElement/f:element/f:constraint">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:key) &gt;= 1">key: minimum cardinality of 'key' is 1</sch:assert>
      <sch:assert test="count(f:key) &lt;= 1">key: maximum cardinality of 'key' is 1</sch:assert>
      <sch:assert test="count(f:requirements) &lt;= 1">requirements: maximum cardinality of 'requirements' is 1</sch:assert>
      <sch:assert test="count(f:severity) &gt;= 1">severity: minimum cardinality of 'severity' is 1</sch:assert>
      <sch:assert test="count(f:severity) &lt;= 1">severity: maximum cardinality of 'severity' is 1</sch:assert>
      <sch:assert test="count(f:human) &gt;= 1">human: minimum cardinality of 'human' is 1</sch:assert>
      <sch:assert test="count(f:human) &lt;= 1">human: maximum cardinality of 'human' is 1</sch:assert>
      <sch:assert test="count(f:expression) &lt;= 1">expression: maximum cardinality of 'expression' is 1</sch:assert>
      <sch:assert test="count(f:xpath) &gt;= 1">xpath: minimum cardinality of 'xpath' is 1</sch:assert>
      <sch:assert test="count(f:xpath) &lt;= 1">xpath: maximum cardinality of 'xpath' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element/f:binding</sch:title>
    <sch:rule context="f:DataElement/f:element/f:binding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:strength) &gt;= 1">strength: minimum cardinality of 'strength' is 1</sch:assert>
      <sch:assert test="count(f:strength) &lt;= 1">strength: maximum cardinality of 'strength' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:valueSetReference) &gt;= 1">valueSetReference: minimum cardinality of 'valueSetReference' is 1</sch:assert>
      <sch:assert test="count(f:valueSetReference) &lt;= 1">valueSetReference: maximum cardinality of 'valueSetReference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DataElement.element.binding</sch:title>
    <sch:rule context="f:DataElement/f:element/f:binding">
      <sch:assert test="(exists(f:valueSetUri) or exists(f:valueSetReference)) or exists(f:description)">provide either a reference or a description (or both) (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element/f:binding/f:valueSetReference</sch:title>
    <sch:rule context="f:DataElement/f:element/f:binding/f:valueSetReference">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-permitted-value-valueset']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-permitted-value-valueset': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>DataElement.element.binding.valueSetReference</sch:title>
    <sch:rule context="f:DataElement/f:element/f:binding/f:valueSetReference">
      <sch:assert test="starts-with(string(@value), 'http:') or starts-with(string(@value), 'https:') or starts-with(string(@value), 'urn:')">URI SHALL start with http:// or https:// urn: (inherited)</sch:assert>
      <sch:assert test="count(f:extension[@url='http://hl7.org/fhir/StructureDefinition/11179-permitted-value-valueset'])=count(f:extension[@url='http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap'])">Must have data element permitted value concept map extension if and only if data element permitted value valueset extension is present</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element/f:mapping</sch:title>
    <sch:rule context="f:DataElement/f:element/f:mapping">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identity) &gt;= 1">identity: minimum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:identity) &lt;= 1">identity: maximum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:map) &gt;= 1">map: minimum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:map) &lt;= 1">map: maximum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identity) &gt;= 1">identity: minimum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:identity) &lt;= 1">identity: maximum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:map) &gt;= 1">map: minimum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:map) &lt;= 1">map: maximum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identity) &gt;= 1">identity: minimum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:identity) &lt;= 1">identity: maximum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:map) &gt;= 1">map: minimum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:map) &lt;= 1">map: maximum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identity) &gt;= 1">identity: minimum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:identity) &lt;= 1">identity: maximum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:map) &gt;= 1">map: minimum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:map) &lt;= 1">map: maximum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClass': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/11179-objectClassProperty': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identity) &gt;= 1">identity: minimum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:identity) &lt;= 1">identity: maximum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:map) &gt;= 1">map: minimum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:map) &lt;= 1">map: maximum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identity) &gt;= 1">identity: minimum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:identity) &lt;= 1">identity: maximum cardinality of 'identity' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:map) &gt;= 1">map: minimum cardinality of 'map' is 1</sch:assert>
      <sch:assert test="count(f:map) &lt;= 1">map: maximum cardinality of 'map' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DataElement/f:element/f:mapping/f:extension</sch:title>
    <sch:rule context="f:DataElement/f:element/f:mapping/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &gt;= 1">valueCoding: minimum cardinality of 'valueCoding' is 1</sch:assert>
      <sch:assert test="count(f:valueCoding) &lt;= 1">valueCoding: maximum cardinality of 'valueCoding' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
