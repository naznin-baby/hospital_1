<%-- 
    Document   : index
    Created on : Apr 16, 2018, 10:31:49 PM
    Author     : Jonayet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/angular.js" type="text/javascript"></script>
        <script src="js/app.js" type="text/javascript"></script>
        <style type="text/css">
            @import "css/custom_css.css";
        </style>

    </head>
    <body ng-controller="myCtrl">


        <div class="container">
             <div class="col-lg-12 header">
                    <ui:insert name="header">
                     
                        <h2><a href=""><b>Jonayet,s Online Store</b></a></h2>
                        <h3><b>Welcome to our Shop</b></h3>
                    </ui:insert>

                </div>
            
            
<!--            <div class="row">
                <div class="header col-md-12">
                    <div class="header col-md-12">
                        <div class="image">
                            <img src="images/Header.jpg" alt="Norway" class="img">
                        </div>
                    </div>-->

                    <!--                    <div class="image">
                                            <img src="images/HomePage.jpg" alt="Norway" class="img">
                                        </div>-->
<!--                </div>-->
                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">

                                
                                <ul class="nav navbar-nav navbar-right">     
                                        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                                  </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="content col-md-12">
                    <ui:insert name="content">
                 <body style="background-color: mediumaquamarine">
        

<!--        <p style="color: green">New in here! Please <a href="reg.html">register  here</a> to login and browse.</p>-->
      
      <form name="loginForm" method="post" action="index.jsp">
<table width="40%" bgcolor="red" align="center">

<tr>
<td colspan=2><center><font size=5><b>Login First</b></font></center></td>
</tr>

<tr>
<td>Username:</td>
<td><input type="text" size=30 name="userid"></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="Password" size=30 name="pwd"></td>
</tr>

<tr>
<td ><input type="Reset"></td>
<td><input type="submit" onclick="return check(this.form)" value="Login"></td>
</tr>

</table>
</form>
<script language="javascript">
function check(form)
{

if(form.userid.value == "baby" && form.pwd.value == "123")
{
    
	return true;
}
else
{
	alert("Error Password or Username")
	return false;
}
}
</script>
    </body>

                    </ui:insert>
                </div>

                <div class="footer-area col-md-12">

                    <div class="col-lg-12 footer">
                        <ui:insert name=" footer">
                            <b> <I>THANKS FOR VISITING OUR SHOP </I> </b>
                        </ui:insert>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
