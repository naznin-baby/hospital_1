<%-- 
    Document   : index
    Created on : Apr 16, 2018, 10:31:49 PM
    Author     : zakir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital_management</title>
        <link href="css/Bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/angular.js" type="text/javascript"></script>
        <script src="js/app.js" type="text/javascript"></script>
        
        <style type="text/css">
            .header, .footer-area{
                border: 1px solid #DDD;
                padding: 20px;
                margin-top: 10px;
                box-shadow: 0px 0px 10px #DDD;
            }
            .content-area, .menu{

                margin-top: 10px;
            }
            .sidebar, .content{
                height: auto;
                border: 1px solid #DDD;
                padding: 20px;
                box-shadow: 0px 0px 10px #DDD;
            }
        </style>

    </head>
    <body ng-controller="myCtrl">
        <div class="container">
            <div class="row">
                
                <div class="header col-md-12">
                    
                    <center> <h1>Hospital_Management</h1></center>
                   
                </div>
                
                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <ul class="nav navbar-nav">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="doctor.jsp">Doctor_List</a></li>
                                    <li><a href="department.jsp">Department</a></li>
                                    <li><a href="appointment.jsp">Appointment</a></li>
                                    <li><a href="patient.jsp">Patient</a></li>
                                    <li><a href="schedule.jsp">Schedule</a></li>
                                    <li><a href="aboutus.jsp">About Us</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <!--                <div class="content-area col-md-12">
                                    <div class="row">-->
                <!--                        <div class="sidebar col-md-3">
                                            <ul class="">
                                                <li><a href="#">Link_1</a></li>
                                                <li><a href="#">Link_2</a></li>
                                                <li><a href="#">Link_3</a></li>
                                                <li><a href="#">Link_4</a></li>
                                                <li><a href="#">Link_5</a></li>
                                            </ul>
                                        </div>-->
               <div class="content col-md-12">
                     <h1>Welcome</h1>
                   
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
                </div>
                <!--                    </div>
                                </div>-->
                <div class="footer-area col-md-12">
                    <center> <h1> footer</h1></center>
                </div>
            </div>
        </div>
    </body>
</html>
