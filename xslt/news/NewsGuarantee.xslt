<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/NewsList">
		<section class="haumai-guarantee">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<xsl:apply-templates select="News[1]" mode="Left"></xsl:apply-templates>
					</div>
					<div class="col-lg-6">
						<div class="row">
							<xsl:apply-templates select="News[position() > 1 and position() &lt; 6]" mode="Right"></xsl:apply-templates>
						</div>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="News[position() > 4]" mode="Bottom"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News" mode="Left">
		<div class="figure-video media-play">
			<div class="wrapper-video">
				<a>
					<xsl:attribute name="data-fancybox">
						<xsl:text>gallery-</xsl:text>
						<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="href">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</xsl:attribute>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="video">
					<div class="icon"><img src="/Data/Sites/1/media/img/product/video.png" alt="" /></div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Right">
		<div class="col-lg-6">
			<div class="figure-video-right">
				<div class="wrapper-video">
					<a>
						<xsl:attribute name="data-fancybox">
							<xsl:text>gallery-</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="href">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="video">
						<div class="icon"><img src="/Data/Sites/1/media/img/product/video.png" alt="" /></div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Bottom">
		<div class="col-lg-3">
			<div class="figure-video-bottom">
				<div class="wrapper-video">
					<a>
						<xsl:attribute name="data-fancybox">
							<xsl:text>gallery-</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="href">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="video">
						<div class="icon"><img src="/Data/Sites/1/media/img/product/video.png" alt="" /></div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
