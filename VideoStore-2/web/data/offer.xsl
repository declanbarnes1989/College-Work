<?xml version="1.0" encoding="UTF-8"?>

<!--Declan Barnes and Alan Sullivan done this file-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <script src="data/snowstorm.js"></script>
                
                
                <script>
                    <![CDATA[
                    function loadXMLDoc()
                    {
                    var xmlhttp;
                    if (window.XMLHttpRequest)
                      {// code for IE7+, Firefox, Chrome, Opera, Safari
                      xmlhttp=new XMLHttpRequest();
                      }
                    else
                      {// code for IE6, IE5
                      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                      }
                    xmlhttp.onreadystatechange=function()
                      {
                      if (xmlhttp.readyState==4 && xmlhttp.status==200)
                        {
                        document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
                        }
                      }
                    xmlhttp.open("GET","data/offer.xml",true);
                    xmlhttp.send();
                    }
                    ]]>
                </script>
            </head>
  
            <body>

                <link rel="stylesheet" type="text/css" href="css/video_store.css" />
		
                <div class="container">
                    <a href="http://www.ncirl.ie/">
                        <img src="images/logo.png"/>
                    </a>
                </div>
                

                <h1>Video Store</h1>
                
                <table border="1">    

                    <th>Coming Soon:</th>
                    <tr>
                        <td>
                            <div id="myDiv">
                                <h2>Check Whats coming Soon the Video Store</h2>
                            </div>
                            <button type="button" onclick="loadXMLDoc()">Coming Soon</button>
                        </td>
                    </tr>
                   
                </table>
            </body>
        </html>
  
    </xsl:template>

</xsl:stylesheet>