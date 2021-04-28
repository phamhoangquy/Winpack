<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<ul class="nav-menu">
			<xsl:apply-templates select="Zone" mode="Parent"></xsl:apply-templates>
		</ul>
	</xsl:template>
	<xsl:template match="Zone" mode="Parent">
		<li class="menu-list">
			<xsl:if test="IsActive = 'true'">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">menu-list active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="title-menu-list">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
			<xsl:if test="count(Zone)&gt;0">
				<div class="mega-menu">
					<div class="container">
						<ul class="has-mega-menu ">
							<li>
								<div class="img-has-mega">
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
								<div class="moblie-show-mega">
									<a class="title-mega">
										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="target">
											<xsl:value-of select="Target"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
										<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
									</a>
									<xsl:if test="count(Zone)&gt;0">
										<span class="ri-arrow-down-s-line"></span>
									</xsl:if>
								</div>
								<xsl:if test="count(Zone)&gt;0">
									<ul class="mega-list">
										<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
									</ul>
								</xsl:if>
							</li>
						</ul>
					</div>
				</div>
			</xsl:if>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Curent">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			
			<div class="moblie-show-mega">
				<a class="title-mega">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<xsl:if test="count(Zone)&gt;0">
					<span class="ri-arrow-down-s-line"></span>
				</xsl:if>
			</div>
			<xsl:if test="count(Zone)&gt;0">
				<ul class="mega-list">
					<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
				</ul>
			</xsl:if>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Child">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
