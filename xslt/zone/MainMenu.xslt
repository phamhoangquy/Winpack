<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<ul class="nav-menu">
			<xsl:apply-templates select="Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=3">
				<li class="menu-list">
					<xsl:if test="IsActive = 'true'">
						<xsl:attribute name="class">
							<xsl:text disable-output-escaping="yes">menu-list active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<div class="moblie-show-menu">
						<a class="title-menu-list">
							<xsl:attribute name="href">
								<xsl:text disable-output-escaping="yes">javascript:;</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<span class="mdi mdi-chevron-down"></span>
					</div>
					<div class="mega-menu">
						<div class="container">
							<ul class="has-mega-menu">
								<li>
									<div class="img-has-mega">
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
									<div class="moblie-show-mega">
										<a class="title-mega">
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
										</a>
										<span class="mdi mdi-chevron-down"></span>
									</div>
									<ul class="mega-list">
										<xsl:apply-templates select="Zone" mode="ZoneChild"></xsl:apply-templates>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</li>
			</xsl:when>
			<xsl:when test="position()=4">
				<li class="menu-list">
					<xsl:if test="IsActive = 'true'">
						<xsl:attribute name="class">
							<xsl:text disable-output-escaping="yes">menu-list active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<div class="moblie-show-menu">
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
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<span class="mdi mdi-chevron-down"></span>
					</div>
					<div class="mega-menu">
						<div class="container">
							<ul class="has-mega-menu">
								<xsl:apply-templates select="Zone" mode="ZoneChild-2"></xsl:apply-templates>
							</ul>
						</div>
					</div>
				</li>
			</xsl:when>
			<xsl:when test="position()=5">
				<li class="menu-list">
					<xsl:if test="IsActive = 'true'">
						<xsl:attribute name="class">
							<xsl:text disable-output-escaping="yes">menu-list active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<div class="moblie-show-menu">
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
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<span class="mdi mdi-chevron-down"></span>
					</div>
					<div class="mega-menu">
						<div class="container">
							<ul class="has-mega-menu">
								<xsl:apply-templates select="Zone" mode="ZoneChild-3"></xsl:apply-templates>
							</ul>
						</div>
					</div>
				</li>
			</xsl:when>
			<xsl:otherwise>
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
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</li>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneChild">
		<li>
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
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneChild-2">
		<li>
			<div class="img-has-mega">
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
			<div class="moblie-show-mega">
				<a class="title-mega">
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
				</a>
			</div>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneChild-3">
		<li>
			<div class="img-has-mega">
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
			<div class="moblie-show-mega">
				<a class="title-mega">
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
				</a>
			</div>
		</li>
	</xsl:template>
</xsl:stylesheet>