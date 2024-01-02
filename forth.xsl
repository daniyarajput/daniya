<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
         <html>
            <head>
            <title>this is an xml data tabel</title>
            </head>
            <body>
                <h2> collection</h2>
                <table  border="2">
                    <tr>
                        <th colspan="4">cd computer</th>
                    </tr>
                    <tr>
                        <td>title</td>
                        <td>artist</td>
                    </tr>
                    <xsl:for-each select="collection/item">
                    <tr>
                        <td><xsl:value-of select="title"></xsl:value-of></td>
                        <td><xsl:value-of select="artist"></xsl:value-of></td>
                       
      
                      </tr>
      

                    </xsl:for-each>
                </table>
            </body>
         </html>
    </xsl:template>
</xsl:stylesheet>