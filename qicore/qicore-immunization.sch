<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Immunization
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>Immunization</sch:title>
    <sch:rule context="f:Immunization">
      <sch:assert test="not(f:wasNotGiven/@value=false() and exists(f:explanation/f:reasonNotGiven))">If immunization was administered (wasNotGiven=false) then explanation.reasonNotGiven SHALL be absent. (inherited)</sch:assert>
      <sch:assert test="not(f:wasNotGiven/@value=true() and (count(f:reaction) &gt; 0 or exists(f:explanation/f:reason)))">If immunization was not administered (wasNotGiven=true) then there SHALL be no reaction nor explanation.reason present (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
