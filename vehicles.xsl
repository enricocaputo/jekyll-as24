<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="stx3">
    <xsl:for-each select="vehicle_data/vehicles/vehicle">
      <li class="card">
        <h3><a><xsl:value-of select="brand"/></a> - <xsl:value-of select="model"/></h3>
        <p><b><xsl:value-of select="version"/></b></p>
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="media/images/image/uri"/>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="brand"/> - <xsl:value-of select="model"/>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="brand"/> - <xsl:value-of select="model"/>
          </xsl:attribute>
          <xsl:attribute name="width">
            250px
          </xsl:attribute>
          <xsl:attribute name="height">
            187px
          </xsl:attribute>
        </img>
        <p> <xsl:value-of select="fuel_type"/> - Kw <xsl:value-of select="kilowatt"/></p>
        <p> <xsl:call-template name="FormatDate">
            <xsl:with-param name="DateTime" select="initial_registration"/>
            </xsl:call-template>
           - Km <xsl:value-of select="mileage"/> </p>
        <p> Price: € <xsl:value-of select="prices/price/value"/></p>
      </li>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="FormatDate">
      <xsl:param name="DateTime" />
      <date>
        <xsl:value-of select="substring($DateTime,1,4)" />
      </date>
    </xsl:template>
</xsl:stylesheet>
