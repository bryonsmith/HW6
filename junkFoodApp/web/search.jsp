<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="style" type="text/css" href="style.css"/>
        <title>Search Favorite Junk Food</title>
    </head>
    <body>

        <div class="wrap"> <!--div to hold all other div WRAP DIV -->

            <%@ include file="includes/header.jsp" %> <!--HEADER-->

            <%@ include file="includes/menu.jsp" %> <!--MENU-->

            <div class="main"> <!-- MAIN div -->

                <h1>Search Favorite Junk Food</h1>

                <form name="searchForm" action="search" method="get">

                    <input type="text" name="searchVal" value="" />

                    <br>

                    <input type="submit" name="submit" value="Search" />

                </form>

            </div>

            <%@ include file="includes/footer.jsp" %> <!--FOOTER-->

        </div>  <!--close WRAP DIV-->

    </body>
</html>
