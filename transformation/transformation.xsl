<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">

<xsl:template match="/">
    <HTML>
        <HEAD>
            <meta charset="utf-8"></meta>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
            <title>Analyse des données Steam</title>
            <meta name="description" content="Analyse des données des jeux Steam"></meta>
            <link rel="stylesheet" href="../web/css/main.css"></link>      
        </HEAD>
        <BODY>
            
            <div id="frame-main">
                <div>
                    
                    <div id="left-frame">
                        <h1 id="head-menu">Accueil</h1>                        
                        <div id="authors">
                            <h4 id="title-author">Auteurs :</h4>
                            <div class="author">
                                <p class="name-author">Mélanie Lopez Malet</p>
                            </div>
                            <div class="author">
                                <p class="name-author">Pierre Rochet</p>
                            </div>                            
                        </div>
                        <div><p id="maj">Dernière mise à jour le<br/>07/01/2020</p></div>
                    </div>
                    
            <div id="mid-frame">
                <div id="right-frame">
                    <div>
            <xsl:apply-templates/>
                    </div>
                </div>
            </div>
            </div>
            </div>
        </BODY>
    </HTML>
</xsl:template>

<xsl:template match="corps/titre">
    <H1><xsl:value-of select="."/></H1>
</xsl:template>
    
<xsl:template match="corps/sous-titre">
    <H2><xsl:value-of select="."/></H2>
    <br style = "line-height:5px"/>
</xsl:template>      

<xsl:template match="corps/titre-sup">
    <br style = "line-height:10px"/>
    <H3><xsl:value-of select="."/></H3>
</xsl:template>

<xsl:template match="rubrique/titre-rubrique">
    <H4><xsl:value-of select="."/></H4>
</xsl:template>

<xsl:template match="rubrique/contenu">
    <P><xsl:value-of select="."/></P>    
</xsl:template>

<xsl:template match="rubrique/lien">
    <a href="https://www.kaggle.com/nikdavis/steam-store-games#steam_description_data.csv"><xsl:value-of select="."/></a>
</xsl:template>
    
<xsl:template match="corps/lien">
    <a href="../web/html/resultat.html"><xsl:value-of select="."/></a>
    <br style = "line-height:10px"/>
</xsl:template>   


<xsl:template match="corps/contenu">
    <P><xsl:value-of select="."/></P>    
</xsl:template>
    
</xsl:stylesheet>