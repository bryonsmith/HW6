

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
        <h1>My Favorite Junk Food </h1>
        
        <%= table %>
        
        <br><br>
        
        <a href ="add"> Add a New Favorite Junk Food</a>
        
    </body>
</html>
