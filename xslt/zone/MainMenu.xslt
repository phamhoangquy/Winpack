<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<ul class="nav-menu">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>
	<xsl:template match="Zone">
		<li class="menu-list">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="position()=1">
				<a href="/"><span class="ri-home-4-fill"></span></a>
			</xsl:if>
			<xsl:if test="position() !=1">
				<a class="title-menu-list">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a>
			</xsl:if>
		</li>
	</xsl:template>
</xsl:stylesheet>
