<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec xpath#axes?>
  <!-- Purpose: Test for 'attribute::*' Axis Identifier. -->

<xsl:template match="/">
  <out>
    <xsl:for-each select="//center">
      <xsl:apply-templates select="attribute::*">
        <xsl:sort select="local-name()"/>
      </xsl:apply-templates>
    </xsl:for-each>
  </out>
</xsl:template>

<xsl:template match="*|@*">
  <xsl:value-of select="name(.)"/><xsl:text> </xsl:text>
</xsl:template>

</xsl:stylesheet>
