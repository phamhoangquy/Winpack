<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<div class="language-wrapper">
			<div class="language">
				<a class="current">
					<xsl:apply-templates select="/LanguageList/Language" mode="Active"></xsl:apply-templates>
				</a>
				<ul class="drop-down">
					<xsl:apply-templates select="/LanguageList/Language"></xsl:apply-templates>
				</ul>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Language" mode="Active">
		<xsl:if test="IsActive='true'">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<img >
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			</img>
			<span class="ri-arrow-down-s-fill"></span>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Language">
		<xsl:if test="IsActive='false'">
			<li>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<img >
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
			</li>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
