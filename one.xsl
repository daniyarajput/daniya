<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
     <html> 
        <head>
            <title> this is an xsl file</title>

        </head>

        <body>
            <h2> bank employee date</h2>
            <table border="2">
            <tr >
                <th colspan="4">bank employee</th>
            </tr>
            <tr>
                <th>name</th>
                <th>id</th>
                <th>salary</th>
            </tr>
            <xsl:for-each select="organization/employee">
                <tr>
                  <td><xsl:value-of select="name"></xsl:value-of></td>
                  <td><xsl:value-of select="id"></xsl:value-of></td>
                  <td><xsl:value-of select="salary"></xsl:value-of></td>

                </tr>

            </xsl:for-each>
        </table>
     </body>
    </html>

</xsl:template>


</xsl:stylesheet>
