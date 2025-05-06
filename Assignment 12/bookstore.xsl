<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<html>
			<head>
				<title>Bookstore Inventory</title>
			</head>
			<body>
				<h2>Bookstore Inventory</h2>
				<table border="1" cellpadding="5" cellspacing="0">
					<tr bgcolor="#9acd32">
						<th>Title</th>
						<th>Author</th>
						<th>Publisher</th>
						<th>Edition</th>
						<th>Price</th>
					</tr>
					<xsl:for-each select="bookstore/book">
						<tr>
							<td><xsl:value-of select="title"/></td>
							<td><xsl:value-of select="author"/></td>
							<td><xsl:value-of select="publisher"/></td>
							<td><xsl:value-of select="edition"/></td>
							<td><xsl:value-of select="price"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
