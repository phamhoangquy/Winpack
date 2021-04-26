<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/ZoneList">
		<section class="about">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="Zone[1]/News" mode="News-About-1"></xsl:apply-templates>
				</div>
			</div>
		</section>

		<section class="about-2">
			<div class="container">
				<h2 class="head-title"><xsl:value-of select="Zone[2]/Title" disable-output-escaping="yes"></xsl:value-of></h2>
				<xsl:apply-templates select="Zone[2]/News" mode="News-About-2"></xsl:apply-templates>
			</div>
		</section>
		<section class="about-3">
			<div class="container">
				<h2 class="head-title"><xsl:value-of select="Zone[3]/Title" disable-output-escaping="yes"></xsl:value-of></h2>
				<div class="brand-slider-swiper-wrapper">
					<div class="nav-arrow-prev"><em class="material-icons">arrow_back_ios</em></div>
					<div class="nav-arrow-next"><em class="material-icons">arrow_forward_ios</em></div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="Zone[3]/News" mode="News-About-3"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="News-About-1">
		<div class="col-lg-6">
			<h1 class="head-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
			<div class="content"> 
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="card-img">
				<img >
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="News-About-2">
		<div class="row">
			<div class="col-lg-6"> 
				<div class="card-img">
					<img >
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="content">
					<h3 class="title-zone"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
					<div class="caption"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="News-About-3">
		<div class="swiper-slide">
			<div class="brand-img zoom-in">
				<img >
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
