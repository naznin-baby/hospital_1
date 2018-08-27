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
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .content{
        background-color: bisque;
        
    }
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body ng-controller="myCtrl">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     <ul class="nav navbar-nav">
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="department.jsp">Department</a></li>
                                    <li><a href="doctor.jsp">Doctor List</a></li>
                                    <li><a href="patient.jsp">Patient List</a></li>
                                     <li><a href="aboutus.jsp">About us</a></li>
                                </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> SingUp</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="content col-md-12">
                    <ui:insert name="content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="contact-sec text-center">
                                    <div class="h3">
                                        <h3><b>Want to <span class="deco">contact</span> us?</b></h3>
                                        <div class="p">
                                            <h4>That's great! Give us a call or send us an email and we will get back to you as soon as possible!</h4>
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-md-push-2">
                                        <form action="" method="post" role="form" class="contactForm"  >
                                            <div class="form-group">
                                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                                <div class="validation"></div>
                                            </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                                <div class="validation"></div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone No:" data-rule="minlen:4" data-msg="Please enter at least 11 chars of phone" />
                                                <div class="validation"></div>
                                            </div>
                                            <div class="form-group">
                                                <textarea class="form-control" name="message" rows="2" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                                <div class="validation"></div>
                                            </div>
                                            <div class="text-center"><button type="submit" class="btn btn-primary btn-lg">Send Message</button></div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </ui:insert>
  <footer class="container-fluid text-center">
    <center>
        <h2> Contact us</h2>
        <p>phone: +42190728860<br></br>
            Email: info@gmail.com <br></br>
            Address:32/East road,Mirpur,Dhaka,Bangladesh;<br></br>
               
            Copyright @ 2018.
            
  
  
  
  </p>
</footer>
    
</body>
</html>