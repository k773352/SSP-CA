<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html>
			<head>
				<title>Topjobs</title>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<style>
				body{font-family:Arial,Helvetica,sans-serif;background-color:#fff;margin:5px;text-align:left;color:#523819}
				h2{font-size:140%;color:#0d3427;margin-top:10px}
				p{font-size:80%;color:#523819}
				table{background-color:#dacfe5;border-color:#000;border-width:thin;border-collapse:collapse;width:75%}
				th{border-color:#000;font-size:120%;color:#0d3427}
				td{border-color:#000;font-size:100%;color:#523819;padding:5px}
				img{float:left;margin-left:10px;margin-right:10px;border:0}
				.indent{margin-left:78px}
				</style>
            </head>
    <table id="menuTable" border="1" class="indent">
		<thead class="headBg">
		    <tr>
				<th>position</th>
				<th>location</th>
				<th>salsry</th>
		    </tr>
		</thead>
		<tbody>
     <xsl:for-each select="//section">
		    <tr>
		       <td colspan="3">
					<xsl:value-of select="@name"/>
			   </td>
			</tr>
			<xsl:for-each select="entry">
			 <td align="center">
			  <input name="item0" type="checkbox"/>
			 </td>		
			 <td>
					<xsl:value-of select="position"/>
			 </td>
		     <td>
					<xsl:value-of select="location"/>
			 </td>
			 <td align="right">
					<xsl:value-of select="salary"/>
			 </td>
			    </xsl:for-each>
				</xsl:for-each>
		</tbody>
	</table>
    </html>
</xsl:template>
</xsl:transform>