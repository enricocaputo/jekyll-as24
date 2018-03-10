<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="stx3">
    <xsl:for-each select="vehicle_data/vehicles/vehicle">
      <li class="card">
        <p>Brand: <a><xsl:value-of select="brand"/></a></p>
        <p>Model: <xsl:value-of select="model"/> - <xsl:value-of select="version"/></p>
        <p>Fuel: <xsl:value-of select="fuel_type"/></p>
        <p>Year: <xsl:value-of select="delivery/delivery_date"/></p>
        <p>Mileage: Km <xsl:value-of select="mileage"/></p>
        <p>Price: € <xsl:value-of select="prices/price/value"/></p>
      </li>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
