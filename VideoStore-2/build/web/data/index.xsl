<?xml version="1.0" encoding="UTF-8"?>

<!--Declan Barnes and Alan Sullivan done this file-->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<head>
		<script src="data/snowstorm.js"></script>
              	
  </head>
  
  <body>

		<link rel="stylesheet" type="text/css" href="css/video_store.css" />
		
		<div class="container">
			<a href="http://www.ncirl.ie/"><img src="images/logo.png"/></a>
		</div>

		<h1>Video Store</h1>
		<table border="1">
		
	    <xsl:for-each select="index/home">
			<tr>
                            <td>
                                <div class="container2">
                               <a href="images/dvd.png">
                                <img src="images/bluray.png"
                                     onmouseover="this.src='images/dvd.png'"
                                     onmouseout="this.src='images/bluray.png'">
                                </img>
                                </a>
                                </div>
                                </td>
                                
				<td><xsl:value-of select="title"/></td>
                                
                                <td>
                                 <div class="container2">
                                <a href="images/dvd.png">
                                <img src="images/bluray.png"
                                     onmouseover="this.src='images/dvd.png'"
                                     onmouseout="this.src='images/bluray.png'">
                                </img>
                                </a>
                                </div>
                                </td>
				
			</tr>
	   </xsl:for-each>
		</table>
	
  </body>
  </html>
  
</xsl:template>

</xsl:stylesheet>