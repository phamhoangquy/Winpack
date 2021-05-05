<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="recruitment-2" setBackground="/Data/Sites/1/media/img/recruitment/bg.png" alt="">
			<div class="container">
				<h2 class="head-title"><xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h2>
				<div class="row">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
				<a class="big-view" href="javascript:;">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					Xem thêm
					<span class="ri-arrow-down-line"></span>
				</a>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-6">
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
				<div class="content-jobs-list">
					<div class="title-jobs">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<xsl:if test="SubTitle != ''">
						<div class="top-jobs">
							<div class="city-jobs">
								<div class="icon-jobs"><span class="ri-map-pin-2-fill"></span></div>
								<div class="title-zone-city">
									Địa điểm: <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
							<div class="money-jobs">
								<div class="icon-jobs"><span class="ri-money-dollar-circle-fill"></span></div>
								<div class="title-zone-money">
									Mức lương: <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
								</div>
							</div>
						</div>
					</xsl:if>
					<div class="bottom-jobs">
						<div class="date">
							<div class="icon"><span class="ri-calendar-check-fill"></span></div>
							<time>
								Hạn nộp : <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
							</time>
						</div>
						<div class="amount">
							<div class="icon"><span class="ri-account-circle-fill"></span></div>
							<div class="title-amount">
								Số lượng : <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
							</div>
						</div>
					</div>
					<div class="view-more">
						Chi tiết
						<span class="ri-arrow-right-s-line"></span>
					</div>
				</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
