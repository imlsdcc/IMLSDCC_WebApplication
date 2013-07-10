<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:content="http://purl.org/rss/1.0/modules/content/"
                xmlns:media="http://search.yahoo.com/mrss/">
  <xsl:output method="xml"/>
  <xsl:template match="/rss/channel">
    <channel>
    <xsl:for-each select="item">
      <item>
        <title>
          <xsl:value-of select="title[1]"/>
        </title>
        <link>
          <xsl:value-of select="link[1]"/>
        </link>
        <pubDate>
          <xsl:value-of select="pubDate[1]"/>
        </pubDate>
        <creator>
          <xsl:value-of select="dc:creator[1]"/>
        </creator>
        <description>
          <xsl:value-of select="description[1]"/>
        </description>
        <media>
          <xsl:value-of select="./media:content[./media:title/text() != ./preceding-sibling::dc:creator/text()]/@url"/>
        </media>
      </item>
    </xsl:for-each>
    </channel>
  </xsl:template>
</xsl:stylesheet>
