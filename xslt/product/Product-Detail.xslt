<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/ProductDetail">
		<section class="product-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="gallery-product-detail-slide">
							<div class="swiper-container gallery-top">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="ProductImages"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-container gallery-thumbs">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="ProductImages" mode="Thumbnail"></xsl:apply-templates>
								</div>
								<div class="nav-arrow-prev"><em class="material-icons">arrow_back_ios</em></div>
								<div class="nav-arrow-next"><em class="material-icons">arrow_forward_ios</em></div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="item-desc-pro-detail">
							<div class="title">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="table-pro-detail">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
							<div class="bottom-wrapper">
								<div class="social-network-share">
									<div class="icon">
										<a href="#">
											<span class="ri-thumb-up-fill"></span>
											<div class="text">Thích</div>
										</a>
										<a href="#">
											<div class="text">Chia sẻ</div>
										</a>
									</div>
								</div>
							</div>
							<div class="brochure"><a href="#">Download brochure sản phẩm </a></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="product-detail-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<div class="tab-product-detail">
							<div class="tab-description">
								<ul class="tab-navigation">
									<xsl:apply-templates select="ProductAttributes[position()&gt;0 and position()&lt;3]" mode="Attr-Tab"></xsl:apply-templates>
								</ul>
							</div>
						</div>
						<div class="tab-wrapper">
							<xsl:apply-templates select="ProductAttributes[position()&gt;0 and position()&lt;3]" mode="Attr-Content"></xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-5 pg">
						<div class="title">Hoạt động của sản phẩm</div>
						<xsl:apply-templates select="ProductAttributes" mode="Attr-Video"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
		<div id="form-inner"></div>
		<section class="product-detail-4">
			<div class="container">
				<h2 class="head-title">Sản phẩm khác</h2>
				<div class="product-other-swiper-wrapper">
					<div class="nav-arrow-prev"><em class="material-icons">arrow_back_ios</em></div>
					<div class="nav-arrow-next"><em class="material-icons">arrow_forward_ios</em></div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="ProductOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="ProductImages">
		<div class="swiper-slide">
			<a class=" ">
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
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
	</xsl:template>
	<xsl:template match="ProductImages" mode="Thumbnail">
		<div class="swiper-slide">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Attr-Tab">
		<li>
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="" href="javascript:void(0)">
				<xsl:attribute name="data-type">
					<xsl:text disable-output-escaping="yes">#tab-</xsl:text>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="Attr-Content">
		<div class="tab-item">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">tab-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="product-detail-more">
				<article>
					<div class="fullcontent">
						<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="btn-view-more"><span>Xem Thêm</span><em class="ri-arrow-down-s-line"></em></div>
				</article>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Attr-Video">
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
			<div class="video">
				<div class="icon"><img src="/Data/Sites/1/media/img/product/video.png" alt="" /></div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">
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
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

