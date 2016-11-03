
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title> Add a New Favorite Junk Food </title>
    </head>
    <body>
        <h1>Add a New Favorite Junk Food</h1>
        
        <form name="addForm" action="addJunkFood" method="get">
        
        <table class="table2">
                        <th colspan="2">Add a New Junk Food:</th>
                        <tr>
                            <td>Junk Food Name:</td>
                            <td><input type="text" name="name" value=""/></td>
                        </tr>

                        <tr>
                            <td>Junk Food Type:</td>
                            <td><input type="text" name="type" value=""/></td>
                        </tr>

                        <tr>
                            <td>Calories:</td>
                            <td><input type="text" name="calories" value=""/></td>
                        </tr>
                        
                        <tr>
                            <td>Rank:</td>
                            <td><input type="text" name="rank" value=""/></td>
                        </tr>

            </table>
            
            <br>

            <input type="submit" name="clear" value="Clear" />
            <input type="submit" name="submit" value="Submit" />
            
        </form>
        
    </body>
</html>
