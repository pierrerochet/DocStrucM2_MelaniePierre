<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">

<xsl:template match="/">
    <HTML>
        <HEAD>
            <title>Steam Data Analysis</title>            
        </HEAD>
        <BODY>
            <xsl:apply-templates/>
        </BODY>
    </HTML>
</xsl:template>

<xsl:template match="corps/titre">
    <H1><xsl:value-of select="."/></H1>
</xsl:template>
    
<xsl:template match="corps/sous-titre">
    <H2><xsl:value-of select="."/></H2>
</xsl:template>      

<xsl:template match="corps/titre-sup">
    <H3><xsl:value-of select="."/></H3>
</xsl:template>

<xsl:template match="rubrique/titre-rubrique">
    <H4><xsl:value-of select="."/></H4>
</xsl:template>

<xsl:template match="rubrique/contenu">
    <P><xsl:value-of select="."/></P>    
</xsl:template>

<xsl:template match="rubrique/lien">
    <a><xsl:value-of select="."/></a>
</xsl:template>
    
<xsl:template match="corps/lien">
    <a><xsl:value-of select="."/></a>
</xsl:template>   


<xsl:template match="corps/contenu">
    <P><xsl:value-of select="."/></P>    
</xsl:template>
    
</xsl:stylesheet>