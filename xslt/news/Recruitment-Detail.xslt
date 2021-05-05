<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/NewsDetail">
		<section class="recruitment-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="card-title">
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>	
							</h1>
							<div class="bottom-wrapper-news-detail">
								<div class="icon-detail"><span class="ri-calendar-check-fill"></span>
									<time>
										<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
									</time>
								</div>
								<div class="social-network-share">
									<div class="icon">
										<div class="fb-like" data-width="" data-layout="button" data-action="like" data-size="large" data-share="true">
											<xsl:attribute name="data-href">
												<xsl:value-of select="FullUrl" disable-output-escaping="yes"></xsl:value-of>
											</xsl:attribute>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="info-hr-detail">
							<div class="card-img">
								<xsl:apply-templates select="NewsImages[1]"></xsl:apply-templates>
							</div>
							<div class="card-body-hr-detail">
								<xsl:apply-templates select="NewsAttributes[1]"></xsl:apply-templates>
							</div>
						</div>
						<div class="hr-list-content">
							<xsl:apply-templates select="NewsAttributes[position()&gt;1]" mode="NewsAttributes-1"></xsl:apply-templates>
							<div class="form-apply-detail">
								<div class="apply-form">
									<div class="btn button-apply">
										<a href="javascript:void(0)" data-fancybox="" data-src="#form-apply">Ứng tuyển</a>
									</div>
									<div class="text">Hoặc</div>
									<div class="btn button-download">
										<a href="" download="">
											<xsl:attribute name="href">
												<xsl:value-of select="FileUrl"></xsl:value-of>
											</xsl:attribute>
											<xsl:attribute name="title">
												<xsl:value-of select="Title"></xsl:value-of>
											</xsl:attribute>
											<xsl:attribute name="target">
												<xsl:value-of select="Target"></xsl:value-of>
											</xsl:attribute>
											Tải hồ sơ mẫu
										</a>
									</div>
								
								</div>
								<div class="form-apply" id="form-apply" style="display: none">
									<iframe>
										<xsl:attribute name="src">
											<xsl:value-of select="ApplyUrl"></xsl:value-of>
										</xsl:attribute>
									</iframe>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="recruitment-detail-other">
			<div class="container">
				<h2 class="head-title">Tuyển dụng khác</h2>
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
	</xsl:template>
	<xsl:template match="NewsImages">
		<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
		</img>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="title-zone">
			<h2>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h2>
		</div>
		<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<xsl:template match="NewsAttributes" mode="NewsAttributes-1">
		<div class="hr-detail-content">
			<h3>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h3>
		</div>
		<div class="text">
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>

	<xsl:template match="NewsOther">
		<div class="swiper-slide">
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
									<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
							<div class="money-jobs">
								<div class="icon-jobs"><span class="ri-money-dollar-circle-fill"></span></div>
								<div class="title-zone-money">
									<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
								</div>
							</div>
						</div>
					</xsl:if>
					<div class="bottom-jobs">
						<div class="date">
							<div class="icon"><span class="ri-calendar-check-fill"></span></div>
							<time>
								<xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
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
