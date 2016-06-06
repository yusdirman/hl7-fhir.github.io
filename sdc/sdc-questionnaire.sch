<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Questionnaire
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Questionnaire</sch:title>
    <sch:rule context="f:Questionnaire">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-provenanceSignatureRequred']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-provenanceSignatureRequred': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/styleSensitive']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/styleSensitive': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-deMap']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-deMap': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:concept) &lt;= 1">concept: maximum cardinality of 'concept' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire</sch:title>
    <sch:rule context="f:Questionnaire">
      <sch:assert test="count(descendant::f:linkId/@value)=count(distinct-values(descendant::f:linkId/@value))">The link ids for groups and questions must be unique within the questionnaire (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:title</sch:title>
    <sch:rule context="f:Questionnaire/f:title">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/style']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/style': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/markup']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/markup': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item</sch:title>
    <sch:rule context="f:Questionnaire/f:item">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-optionalDisplay']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-optionalDisplay': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-hidden': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/minLength']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/minLength': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/regex']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/regex': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/entryFormat']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/entryFormat': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/minValue']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/minValue': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/maxValue']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/maxValue': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/mimeType']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/mimeType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/maxSize']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/maxSize': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-deReference']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-deReference': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:concept) &lt;= 1">concept: maximum cardinality of 'concept' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item</sch:title>
    <sch:rule context="f:Questionnaire/f:item">
      <sch:assert test="not(f:type/@value='display' and f:readOnly)">Read-only can't be specified for &quot;display&quot; items (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value=('group', 'display') and f:*[starts-with(local-name(.), 'initial')])">Default values can't be specified for groups or display items (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value='display' and (f:required or f:repeats))">Required and repeat aren't permitted for display items (inherited)</sch:assert>
      <sch:assert test="f:type/@value=('choice','open-choice') or not(f:option or f:options)">Only 'choice' items can have options (inherited)</sch:assert>
      <sch:assert test="not(f:options and f:option)">A question cannot have both option and options (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value='display' and f:concept)">Display items cannot have a &quot;concept&quot; asserted (inherited)</sch:assert>
      <sch:assert test="f:type/@value=('boolean', 'decimal', 'integer', 'open-choice', 'string', 'text', 'url') or not(f:maxLength)">Maximum length can only be declared for simple question types (inherited)</sch:assert>
      <sch:assert test="not((f:type/@value='group' and not(f:item)) or (f:type/@value='display' and f:item))">Group items must have nested items, display items cannot have nested items (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:extension">
      <sch:assert test="not(parent::*/f:type/@value='display')">minOccurs can't exist for display items (inherited)</sch:assert>
      <sch:assert test="f:valueInteger/@value=0 or parent::*/f:required/@value=true()">minOccurs can't be more than one if required is false (inherited)</sch:assert>
      <sch:assert test="not(parent::*/f:type/@value='display')">maxOccurs can't exist for display items (inherited)</sch:assert>
      <sch:assert test="f:valueInteger/@value&lt;=1 or parent::*/f:repeats/@value=true()">maxOccurs can't be more than one if repeats is false (inherited)</sch:assert>
      <sch:assert test="parent::*/f:type/@value=('choice', 'open-choice')">choiceOrientation can only be present on elements of type &quot;choice&quot; or &quot;open-choice&quot; (inherited)</sch:assert>
      <sch:assert test="parent::*/f:type/@value=('integer', 'decimal')">Lookup Questionnaire can only be specified for questions with a type of &quot;integer&quot; or &quot;decimal&quot; (inherited)</sch:assert>
      <sch:assert test="not(parent::*/f:type/@value='display')">Data Element references can't be specified for &quot;display&quot; items (inherited)</sch:assert>
      <sch:assert test="parent::*/f:type/@value='reference'">Allowed resource can only be specified for items of type 'reference' (inherited)</sch:assert>
      <sch:assert test="parent::*/f:type/@value='display'">Display category can only be specified for items of type display (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:prefix</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:prefix">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/style']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/style': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/markup']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/markup': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:text</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:text">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/style']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/style': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/markup']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/markup': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen">
      <sch:assert test="count(*[starts-with(local-name(.), 'answer')]|answered) = 1">enableWhen must contain either an 'answer' or an 'answered' element (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:option</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:option">
      <sch:assert test="count(f:extension) &lt;= 1">extension: maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
