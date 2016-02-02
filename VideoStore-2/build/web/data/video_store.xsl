<?xml version="1.0" encoding="UTF-8"?>

<!--Declan Barnes and Alan Sullivan done this file-->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <script src="data/snowstorm.js"></script>
                <script> 
                    window.onload = choosePic;

                    var myPix = new Array("images/X-Men.png",
                    "images/afterEarth.png","images/galaxy.png","images/hangover.png","images/inception.png",
                    "images/lotr.png","images/ghost-protocol.png","images/mrsBrownsBoys.png","images/transformers.png");

                    function choosePic() {
                    randomNum = Math.floor((Math.random() * myPix.length));
                    document.getElementById("myPicture").src = myPix[randomNum];
                    }	
                </script> 
                <script language="Javascript" type="text/javascript" src="script10.js"></script>
                
            </head>
  
            <body>

                <link rel="stylesheet" type="text/css" href="css/video_store.css" />
		
                <div class="container">
                    <a href="http://www.ncirl.ie/">
                        <img src="images/logo.png"/>
                    </a>
                </div>
                

                <h1>Video Store-Dvd's</h1>
                
                <table border="1">
                    <tr>
                        <th>
                            <u>Title:</u>
                        </th>
                        <th>
                            <u>Image:</u>
                        </th>
                        <th>
                            <u>Genre:</u>
                        </th>
                        <th>
                            <u>Age Rating:</u>
                        </th>
                        <th>
                            <u>Type:</u>
                        </th>
                        

                    </tr>
                    
                    
                    <p>
                        <img src="images/dvd.png" width="305" height="312" id="myPicture" alt="some image" />  Staff Pick 20% Discount
                    </p>    
		
                    <xsl:for-each select="store/dvd">
                
                        <tr>
                            
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="image"/>
                                    </xsl:attribute>
                                </img>
                            </td>
                            <td>
                                <xsl:value-of select="genre"/>
                            </td>
                            <td>
                                <xsl:value-of select="age"/>
                            </td>
                            <td>
                                <xsl:value-of select="type"/>
                            </td>
				
                        </tr>
                    </xsl:for-each>
                </table>
	
            </body>
        </html>
  
    </xsl:template>

</xsl:stylesheet>