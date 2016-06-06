<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ReferralRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ReferralRequest</sch:title>
    <sch:rule context="f:ReferralRequest">
      <sch:assert test="count(f:reason) &gt;= 1">reason: minimum cardinality of 'reason' is 1</sch:assert>
      <sch:assert test="count(f:serviceRequested) &gt;= 1">serviceRequested: minimum cardinality of 'serviceRequested' is 1</sch:assert>
      <sch:assert test="count(f:supportingInformation) &gt;= 1">supportingInformation: minimum cardinality of 'supportingInformation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
