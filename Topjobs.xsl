<?xml version="1.0"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
	<table id="menuTable" border="1" class="indent">
			<thead>
		 <tr>
			<th colspan="3">Topjobs</th>
		 </tr>
		 <tr>
				<th>position</th>
				<th>location</th>
				<th>salsry</th>
		 </tr>
			</thead>
			<tbody>
     <xsl:for-each select="//section">
		 <tr>
		       <td colspan="3" class="titleBg">
					<xsl:value-of select="@name" />
			 </td>
		 </tr>
						<xsl:for-each select="entry">
				<tr id="{position()}">
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
		 </tr>
					</xsl:for-each>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>