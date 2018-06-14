<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
<head>
<style>
table
{
border:1px solid black;
width:50%;
border-collapse:collapse;
}

</style>
</head>
<body>
<table border="1" align="center">
   <tr bgcolor="#8c1aff">
      
       <th align="center">Register number</th>
	   <th align="center">First name</th>
	   <th align="center">Last name</th>
	   <th align="center">Age</th>
	   <th align="center">Department</th>
   </tr>
   
  <xsl:for-each select="student/students">
  <xsl:if test ="age &gt;23">
   
   <tr bgcolor=" #99bbff">
       <td align="center"><xsl:value-of select="@regno"/></td>
       <td align="center"><xsl:value-of select="fname"/></td>
	   <td align="center"><xsl:value-of select="lname"/></td>
	   <td align="center"><xsl:value-of select="age"/></td>
	   <td align="center"><xsl:value-of select="department"/></td>
	   
   </tr>
  
   </xsl:if>
   </xsl:for-each>


</table>


</body>
</html>
</xsl:template>
</xsl:stylesheet>