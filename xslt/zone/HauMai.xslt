<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/ZoneList">
		<section class="haumai-list">
			<div class="container">
				<h1 class="head-title"><xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of></h1>
				<div class="row">
					<xsl:apply-templates select="Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="col-lg-4">
			<div class="block-haumai">
				<div class="card-img zoom-in">
					<a href="#">
						<xsl:value-of disable-output-escaping="yes" select="SecondImageUrl"></xsl:value-of>
					</a>
					<a class="btn-sp" href="#">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
