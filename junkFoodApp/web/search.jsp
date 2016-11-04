<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>Search Favorite Junk Food</title>
    </head>
    <body>

        <div class="wrap"> <!--div to hold all other div WRAP DIV -->

            <%@ include file="includes/header.jsp" %> <!--HEADER-->

            <%@ include file="includes/menu.jsp" %> <!--MENU-->

            <div class="main"> <!-- MAIN div -->
                <form name="searchForm" action="search" method="get">
                    <table class="add">

                        <th> Search Favorite Junk Food: </th><th></th>

                        <th><input type="text" name="searchVal" value="" /></th>

                        <br>

                        <th><input type="submit" name="submit" value="Search" /></th>
                        <tr>

                    </table>
                </form>
            </div>

            <%@ include file="includes/footer.jsp" %> <!--FOOTER-->

        </div>  <!--close WRAP DIV-->

    </body>
</html>
