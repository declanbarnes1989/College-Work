<?xml version="1.0" encoding="UTF-8"?>

<!--Declan Barnes and Alan Sullivan done this file-->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  
		<script type="text/javascript">
		
			alert("Caution!!! You are now entering the Customer Database!");
			 
 
		</script>
		<script src="data/snowstorm.js"></script>
  </head>
  <body>
 
   
	<link rel="stylesheet" type="text/css" href="css/video_store.css" />
	<div class="container">
		<a href="http://www.ncirl.ie/"><img src="images/logo.png"/></a>
	</div>

	<h1>Customer Database</h1>
   <table border="1">
    <tr>
      <th><u>Name:</u></th>
      <th><u>Last Name:</u></th>
	  <th><u>D.O.B:</u></th>
	  <th><u>Type:</u></th>
          <th><u>Customer Status:</u></th>

	  </tr>
	   <xsl:for-each select="store/details/detail">
			<tr>
				<td><xsl:value-of select="firstname"/></td>
				<td><xsl:value-of select="lastname"/></td>
				<td><xsl:value-of select="dob"/></td>
				<td><xsl:value-of select="address"/></td>
                                <td><xsl:value-of select="customer_status"/></td>
			</tr>
	   </xsl:for-each>
		</table>
		
	
  </body>
  </html>
  
</xsl:template>

</xsl:stylesheet>