<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.JunkFood"%>
<% JunkFood junkFood = (JunkFood) request.getAttribute("junkFood");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title> Update A Favorite Junk Food </title>
    </head>
    <body>
        <div class="wrap"> <!--div to hold all other div WRAP DIV -->

            <%@ include file="includes/header.jsp" %> <!--HEADER-->

            <%@ include file="includes/menu.jsp" %> <!--MENU-->

            <div class="main"> <!-- MAIN div -->
                <h1> Update The List of My Favorite Junk Food </h1>

                <form name="updateForm" action="updateJunkFood" method="get">

                    <table class="update">
                        <th>Update Junk Food </th><th></th>
                        <tr>
                            <td>Junk Food ID:</td>
                            <td><input type="text" name="id" value="<%= junkFood.getJunkFoodID()%>" readonly/></td>
                        </tr>

                        <tr>
                            <td>Junk Food Name:</td>
                            <td><input type="text" name="name" value="<%= junkFood.getJunkFoodName()%>"/></td>
                        </tr>

                        <tr>
                            <td>Junk Food Type:</td>
                            <td><input type="text" name="type" value="<%= junkFood.getJunkFoodType()%>"/></td>
                        </tr>

                        <tr>
                            <td>Calories:</td>
                            <td><input type="text" name="calories" value="<%= junkFood.getCalories()%>"/></td>
                        </tr>

                        <tr>
                            <td>Rank:</td>
                            <td><input type="text" name="rank" value="<%= junkFood.getJunkFoodRank()%>"/></td>
                        </tr>

                    </table>

                    <br>

                    <input type="submit" name="submit" value="Update"/>
                    <input type="reset" name="reset" value="Clear" />

                </form>
            </div>

            <%@ include file="includes/footer.jsp" %> <!--FOOTER-->

        </div>  <!--close WRAP DIV-->
    </body>
</html>
