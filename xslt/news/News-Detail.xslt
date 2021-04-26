<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsDetail">
		<section class="news-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 box-shaw">
						<div class="card-title">
							<h1>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<div class="bottom-wrapper-news-detail">
								<time>
									<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
									<!-- <xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>
									.
									<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>
									.
									<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of> -->
								</time>
								<div class="social-network-share">
									<div class="icon">
										<!-- <a href="#">
											<span class="ri-thumb-up-fill"></span>
											<div class="text">Like 0</div>
										</a>
										<a href="#">
											<div class="text">Share</div>
										</a> -->
										<div class="fb-like" data-width="" data-layout="button" data-action="like" data-size="large" data-share="true">
											<xsl:attribute name="data-href">
												<xsl:value-of select="FullUrl" disable-output-escaping="yes"></xsl:value-of>
											</xsl:attribute>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="fullcontent">
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</section>
		<xsl:if test="count(NewsOther)&gt;0">
			<section class="other-news">
				<div class="container">
					<h2 class="head-title">Tin tức khác</h2>
					<div class="other-slide-swiper-wrapper">
						<div class="nav-arrow-prev"><em class="material-icons">arrow_back_ios</em></div>
						<div class="nav-arrow-next"><em class="material-icons">arrow_forward_ios</em></div>
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<div class="other-wrapper">
				<div class="card-img images-zoom" >
					<a class="" href="#">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
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
				</div>
				<div class="content">
					<div class="date">
						<time>
							<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
						</time>
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
		</div>
	</xsl:template>
</xsl:stylesheet>
