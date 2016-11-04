
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title> Add a New Favorite Junk Food </title>
    </head>
    <body>

        <div class="wrap"> <!--div to hold all other div WRAP DIV -->

            <%@ include file="includes/header.jsp" %> <!--HEADER-->

            <%@ include file="includes/menu.jsp" %> <!--MENU-->

            <div class="main"> <!-- MAIN div -->

                <h1>Add a New Favorite Junk Food</h1>

                <form name="addForm" action="addJunkFood" method="get">

                    <table class="add">
                        <th>Add a New Junk Food:</th><th></th>
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
                    <button type="reset" value="Reset"> Reset </button>
                    <button type="submit" value="Submit"> Submit </button>


                </form>

            </div>

            <%@ include file="includes/footer.jsp" %> <!--FOOTER-->

        </div>  <!--close WRAP DIV-->

    </body>
</html>
