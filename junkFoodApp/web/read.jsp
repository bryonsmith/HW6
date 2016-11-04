<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>My Favorite Junk Food</title>
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body>
        
        <div class="wrap"> <!--div to hold all other div WRAP DIV -->
        
            <%@ include file="includes/header.jsp" %> <!--HEADER-->
            
            <%@ include file="includes/menu.jsp" %> <!--MENU-->
        
            <div class="main"> <!-- MAIN div -->
        
                <h1> My Favorite Junk Food </h1>
        
                <%= table %>
        
                <br><br>
        
                <a href ="add"> Add a New Favorite Junk Food</a>
        
                <br> <br>
        
                <a href="search.jsp">Search Favorite Junk Food</a>
        
                <br> <br>
            </div>
        
            <%@ include file="includes/footer.jsp" %> <!--FOOTER-->
        
        </div>  <!--close WRAP DIV-->
    </body>
</html>
