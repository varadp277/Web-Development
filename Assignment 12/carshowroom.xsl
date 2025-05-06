<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Car Showroom</title>
      </head>
      <body>
        <h2>Car Showroom Inventory</h2>
        <table border="1" cellpadding="5" cellspacing="0">
          <tr bgcolor="#9acd32">
            <th>Company</th>
            <th>Name</th>
            <th>Color</th>
            <th>Price</th>
          </tr>
          <xsl:for-each select="carshowroom/car">
            <tr>
              <td><xsl:value-of select="company"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="color"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
