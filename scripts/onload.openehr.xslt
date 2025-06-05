<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Updates the IG to list all found spreadsheets, sets license and fills in all of the default parameters used by this template
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://hl7.org/fhir" exclude-result-prefixes="html f">
  <xsl:import href="onLoad.xslt"/>
  <xsl:template match="node()" mode="addParameters">
    <xsl:param name="extensionMode"/>
    <xsl:apply-imports>
      <xsl:with-param name="extensionMode" select="$extensionMode"/>
    </xsl:apply-imports>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'openehr'"/>
      <xsl:with-param name="value" select="'true'"/>
    </xsl:call-template>
  </xsl:template>
</xsl:stylesheet>