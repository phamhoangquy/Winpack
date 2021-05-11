<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="count(Product) &gt; 0">
			<section class="home_s-2 section-product-home">
				<div class="container">
					<div class="block-title" data-aos="fade-up">
						<h1 class="head-title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h1>
						<div class="view-more">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
						Xem tất cả
							</a>
							<span class="ri-arrow-right-line"> </span>
						</div>
					</div>
					<div class="home-slide-2-swiper-wrapper">
						<div class="nav-arrow-prev">
							<em class="material-icons">arrow_back_ios_new</em>
						</div>
						<div class="nav-arrow-next">
							<em class="material-icons">arrow_forward_ios</em>
						</div>
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="Product"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Product">
		<div class="swiper-slide">
			<div class="wrapper"  data-aos="fade-up">
				<xsl:attribute name="data-aos-delay">
					<xsl:value-of disable-output-escaping="yes" select="100 + position() *100"></xsl:value-of>
				</xsl:attribute>
				<div class="card-img zoom-in">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
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
					<a>
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