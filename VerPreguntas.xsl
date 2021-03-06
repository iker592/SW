<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML> <BODY> <h2>Contenido de preguntas.xml</h2>
<TABLE border="1">
	<THEAD>
		<TR> <TH>Enunciado</TH> <TH>Complejidad</TH> <TH>Tematica</TH> </TR>
	</THEAD>
	<xsl:for-each select="/assessmentItems/assessmentItem" >
		<TR>
		<TD>
		<FONT SIZE="2" FACE="Verdana">
		<xsl:value-of select="itemBody/p"/> <BR/>
		</FONT>
		</TD>
		<TD>
		<FONT SIZE="2" FACE="Verdana">
			<xsl:value-of select="@complexity" /> <BR/>
		</FONT>
		</TD>
		<TD>
		<FONT SIZE="2" FACE="Verdana">
			<xsl:value-of select="@subject" /> <BR/>
		</FONT>
		</TD>
		</TR>
	</xsl:for-each>
</TABLE>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>