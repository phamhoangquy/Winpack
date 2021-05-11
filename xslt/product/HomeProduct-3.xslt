<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="home_s-3" data-aos="fade-up">
			<div class="container">
				<div class="block-title">
					<h1 class="head-title">
						<xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
					</h1>
					<div class="view-more">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Zone/Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Zone/Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Zone/Target"></xsl:value-of>
							</xsl:attribute>
							Xem tất cả
						</a>
						<span class="ri-arrow-right-line"> </span>
					</div>
				</div>
				<div class="home-slide-3-swiper-wrapper">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="Zone/Product" mode="ZoneProduct"></xsl:apply-templates>
						</div>
					</div>
					<div class="wrap-button">
						<div class="nav-arrow-prev">
							<em class="material-icons">arrow_back_ios_new</em>
						</div>
						<div class="nav-arrow-next">
							<em class="material-icons">arrow_forward_ios</em>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product" mode="ZoneProduct">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="card-img zoom-in">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<img >
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="title">
					<a class=" ">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>