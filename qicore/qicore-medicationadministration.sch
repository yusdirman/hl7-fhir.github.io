<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationAdministration
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>MedicationAdministration</sch:title>
    <sch:rule context="f:MedicationAdministration">
      <sch:assert test="not(exists(f:reasonNotGiven) and f:wasNotGiven/@value=false())">Reason not given is only permitted if wasNotGiven is true (inherited)</sch:assert>
      <sch:assert test="not(exists(f:reasonGiven) and f:wasNotGiven/@value=true())">Reason given is only permitted if wasNotGiven is false (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationAdministration.dosage</sch:title>
    <sch:rule context="f:MedicationAdministration/f:dosage">
      <sch:assert test="exists(f:dose) or exists(f:rateRatio) or exists(f:rateRange)">SHALL have at least one of dosage.dose and dosage.rate[x] (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
