<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>My Favorite Junk Food</title>
    </head>
    <body>
        <div class="wrap"> <!--div to hold all other div WRAP DIV -->

            <%@ include file="includes/header.jsp" %> <!--HEADER-->

            <%@ include file="includes/menu.jsp" %> <!--MENU-->

            <div class="main"> <!-- MAIN div -->

                <h1>About Me</h1>
                
                <p>Hello, my name is Bryon.</p>  
                    
                <p>I am a student at the University of Iowa.  I am a husband to Sara, and a father of two wonderful children named Aja and Jonah. </p>  
                
                <p>I grew up in Iowa City and went to Senior West High school, where I graduated in 2002.  In 2003, I joined the <a href="https://www.army.mil/"> U.S. Army</a> and went to a lot of places.  I traveled to Korea, Iraq, Kuwait, and many different states.  I got out of the army in 2009 and moved my family back to Iowa City.  I went to <a href="http://www.kirkwood.edu/"> Kirkwood Community College</a> and obtained my A.A. in Liberal Arts in 2011.  In 2013, I transfered to <a href="https://uiowa.edu/"> the University of Iowa</a>.  In 2014, I got into the <a href="https://tippie.uiowa.edu/"> Tippie College of Business</a> where I am majoring in Business Analyitics and Information Systems &lpar;BAIS&rpar;.  After I graduate in 2017, I want to go into the cyber security field to help protect customers information.</p>

                <p>Now that you know a little about me, I would like to show you a list my favorite junk foods that I like to eat while doing my homework, traveling, or just hanging out.  Feel free to click on the link above to check out a list of all my favorite junk food.</p>  
                
                <p>Also, you can add a few of your own to the list.</p>  
                
                <p> Enjoy.</p>

            </div>

            <%@ include file="includes/footer.jsp" %> <!--FOOTER-->

        </div>  <!--close WRAP DIV-->
    </body>
</html>
