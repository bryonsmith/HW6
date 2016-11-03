<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.JunkFood"%>
<% JunkFood junkFood = (JunkFood) request.getAttribute("junkFood"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title> Update A Favorite Junk Food </title>
    </head>
    <body>
        <body>
        <h1> Update A Favorite Junk Food Record </h1>
        
        <form name="updateForm" action="updateJunkFood" method="get">
        
        <table class="update">
                        <th colspan="2">Update A Junk Food Table</th>
                        <tr>
                            <td>Junk Food ID:</td>
                            <td><input type="text" name="name" value="<%= junkFood.getJunkFoodID() %>"/></td>
                        </tr>
                        
                         <tr>
                            <td>Junk Food Name:</td>
                            <td><input type="text" name="name" value="<%= junkFood.getJunkFoodName() %>"/></td>
                        </tr>

                        <tr>
                            <td>Junk Food Type:</td>
                            <td><input type="text" name="type" value="<%= junkFood.getJunkFoodType() %>"/></td>
                        </tr>

                        <tr>
                            <td>Calories:</td>
                            <td><input type="text" name="calories" value="<%= junkFood.getCalories() %>"/></td>
                        </tr>
                        
                        <tr>
                            <td>Rank:</td>
                            <td><input type="text" name="rank" value="<%= junkFood.getJunkFoodRank() %>"/></td>
                        </tr>

            </table>
            
            <br>

            <input type="submit" name="clear" value="Clear" />
            <input type="submit" name="submit" value="Update" />
            
        </form>
    </body>
</html>
