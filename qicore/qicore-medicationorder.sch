<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationOrder
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationOrder/f:dosageInstruction</sch:title>
    <sch:rule context="f:MedicationOrder/f:dosageInstruction">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-doseType']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-doseType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-infuseOver']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-infuseOver': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-rateIncrement']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-rateIncrement': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-rateIncrementInterval']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-rateIncrementInterval': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-rateGoal']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-rateGoal': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-minDosePerPeriod']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-minDosePerPeriod': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-maxDeliveryRate']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-maxDeliveryRate': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-maxDeliveryVolume']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/pharmacy-core-maxDeliveryVolume': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
