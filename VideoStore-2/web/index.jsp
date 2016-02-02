<%-- 
    Document   : Index
    Author     : Declan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="css/video_store.css">
       
    </head>
    <body>
              <!-- Horizontal menu-->
    
      <ul>
            <li><a href="<%= request.getContextPath()%>/index.jsp">Home</a></li>

            <li><a href="<%= request.getContextPath()%>/alldvds.jsp">All Dvd's</a></li>

            <li><a href="<%= request.getContextPath()%>/customer.jsp">Customers Details</a></li>

            <li><a href="<%= request.getContextPath()%>/about.jsp">About Us</a></li>
            
            <li><a href="<%= request.getContextPath()%>/offer.jsp">Coming Soon</a></li>
      </ul>
      
    
      <br/>
        <jsp:include page="index" flush="true" />
    </body>
</html>
