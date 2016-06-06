<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Order
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Order</sch:title>
    <sch:rule context="f:Order">
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:source) &gt;= 1">source: minimum cardinality of 'source' is 1</sch:assert>
      <sch:assert test="count(f:reason[x]) &gt;= 1">reason[x]: minimum cardinality of 'reason[x]' is 1</sch:assert>
      <sch:assert test="count(f:detail) &lt;= 1">detail: maximum cardinality of 'detail' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Order.when</sch:title>
    <sch:rule context="f:Order/f:when">
      <sch:assert test="exists(f:code) != exists(f:schedule)">Provide a code or a schedule, but not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
