<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:html="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="tei html"
  version="2.0">

  <xsl:template match="/tei:TEI">
    <xsl:apply-templates select="tei:text/tei:body/tei:div"/>
  </xsl:template>

  <xsl:template match="tei:div[@type='poem']">
    <div class="poem">
      <xsl:apply-templates/>
    </div>
  </xsl:template>

  <xsl:template match="tei:div">
    <div class="{@type}">
      <xsl:apply-templates />
    </div>
  </xsl:template>
  
  <xsl:template match="tei:head[1]">
    <h1 id="{concat('mc', @n)}" class="{@rend}"><xsl:apply-templates /></h1>
  </xsl:template>
  
  <xsl:template match="tei:head[2]">
    <h2 class="{@rend}"><xsl:apply-templates /></h2>
  </xsl:template>

  <xsl:template match="tei:lg">
    <div class="linegroup">
      <xsl:apply-templates />
    </div>
  </xsl:template>

  <xsl:template match="tei:l">
    <p id="{@n}" class="line {@rend}">
      <xsl:apply-templates />
    </p>
  </xsl:template>
  
  <xsl:template match="tei:app">
    <span class="apparatus">
      <xsl:apply-templates select="tei:lem"/>
    </span>
  </xsl:template>

  <xsl:template match="tei:lb">
    <br/>
  </xsl:template>

  <xsl:template match="tei:hi">
    <span class="{@rend}"><xsl:apply-templates /></span>
  </xsl:template>

  <xsl:template match="tei:p">
    <p class="{@rend}"><xsl:apply-templates/></p>
  </xsl:template>

  <xsl:template match="tei:quote">
    <blockquote><xsl:apply-templates /></blockquote>
  </xsl:template>

  <xsl:template match="tei:epigraph">
    <div class="epigraph"><xsl:apply-templates /></div>
  </xsl:template>

  <xsl:template match="tei:bibl">
    <div class="bibl"><xsl:apply-templates/></div>
  </xsl:template>

  <xsl:template match="tei:speaker">
    <div class="speaker"><xsl:apply-templates /></div>
  </xsl:template>

  <xsl:template match="tei:dateline">
    <div class="dateline"><xsl:apply-templates /></div>
  </xsl:template>

</xsl:stylesheet>
