<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <meta charset="utf-8" />
        <title>Favorite Key</title>
    </head>
    <body>
         <h1>My favorite shortcut key</h1>       
        <table style="width:100%;" border="1">
         <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Bearcat ID</th>
            <th>Favorite ID</th>
        </tr>      
            <xsl:for-each select="/users/user">   
            <tr>
                <td><xsl:value-of select="firstname"/></td>
                <td><xsl:value-of select="lastname"/></td>
                <td><xsl:value-of select="bearcatid"/></td>
                <td><xsl:value-of select="favoriteshortcutkey"/></td>                                      
        </tr>   
           </xsl:for-each> 
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>