<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>RWpod - подкаст про мир Ruby и Web технологии RSS Feed</title>
				<meta charset="utf-8" />
				<style type="text/css">
					body {
						font-family: -apple-system,BlinkMacSystemFont,"Segoe UI","Roboto","Oxygen","Ubuntu","Cantarell","Fira Sans","Droid Sans","Helvetica Neue",sans-serif;
						font-size: 13px;
					}

					#intro {
						background-color:#CFEBF7;
						border:1px #2580B2 solid;
						padding:5px 13px 5px 13px;
						margin:10px;
					}

					#intro p {
						line-height:	16.8667px;
					}

					td {
						font-size:11px;
					}

					th {
						text-align:left;
						padding-right:30px;
						font-size:11px;
					}

					tr.high {
						background-color:whitesmoke;
					}

					#footer {
						padding:2px;
						margin:10px;
						font-size:8pt;
						color:gray;
					}

					#footer a {
						color:gray;
					}

					a {
						color:black;
					}
				</style>
			</head>
			<body>
				<h1>RWpod - подкаст про мир Ruby и Web технологии RSS Feed</h1>
				<div id="intro">
          <img title="RWpod - подкаст про мир Ruby и Web технологии" alt="RWpod - подкаст про мир Ruby и Web технологии" src="http://www.rwpod.com/images/favicons/apple-touch-icon-152x152-precomposed.png" />
					<p>RWpod - подкаст про мир Ruby и Web технологии (для тех, кому нравится мыслить в Ruby стиле).</p>
				</div>
				<div id="content">
					<table cellpadding="5">
						<tr style="border-bottom:1px black solid;">
							<th>Title</th>
							<th>Media URL</th>
							<th>Publication date (GMT)</th>
						</tr>
						<xsl:for-each select="rss/channel/item">
              <xsl:variable name="itemURL">
                <xsl:value-of select="link" />
              </xsl:variable>
              <xsl:variable name="enclosureURL">
                <xsl:value-of select="enclosure/@url" />
              </xsl:variable>
							<tr>
								<td>
									<a href="{$itemURL}">
										<xsl:value-of select="title" />
									</a>
								</td>
								<td>
									<a href="{$enclosureURL}">
										<xsl:value-of select="enclosure/@url" />
									</a>
								</td>
								<td>
                  <xsl:value-of select="pubDate" />
                </td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				<div id="footer">
					Copyright RWpod.
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>