<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile QICore-DiagnosticOrder
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:DiagnosticOrder</sch:title>
    <sch:rule context="f:DiagnosticOrder">
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:priority) &gt;= 1">priority: minimum cardinality of 'priority' is 1</sch:assert>
      <sch:assert test="count(f:event) &gt;= 1">event: minimum cardinality of 'event' is 1</sch:assert>
      <sch:assert test="count(f:item) &gt;= 1">item: minimum cardinality of 'item' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 1">item: maximum cardinality of 'item' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DiagnosticOrder/f:event</sch:title>
    <sch:rule context="f:DiagnosticOrder/f:event">
      <sch:assert test="count(f:description) &lt;= 0">description: maximum cardinality of 'description' is 0</sch:assert>
      <sch:assert test="count(f:actor) &gt;= 1">actor: minimum cardinality of 'actor' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DiagnosticOrder/f:item</sch:title>
    <sch:rule context="f:DiagnosticOrder/f:item">
      <sch:assert test="count(f:status) &lt;= 0">status: maximum cardinality of 'status' is 0</sch:assert>
      <sch:assert test="count(f:event) &lt;= 1">event: maximum cardinality of 'event' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
