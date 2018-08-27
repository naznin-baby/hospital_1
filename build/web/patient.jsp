<%-- 
    Document   : patient
    Created on : Apr 26, 2018, 11:20:23 PM
    Author     : Baby
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
                background-color: #ccccff;
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
                    <div class="image">
                         <img src="images/hospital_1.jpg" alt="Norway" class="img" height="100%" width="100%">
                    </div>
                    <h1><a href="">Patient List</a></h1>
                </div>
                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">

                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="department.jsp">Department</a></li>
                                    <li><a href="doctor.jsp">Doctor</a></li>
                                    <li><a href="patient.jsp">Patient</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="content-area col-md-12" style="background-color: #66ffcc">
<!--                    <div class="row">
                        <div class="sidebar col-md-3">
                            <ul class="">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Page 1</a></li>
                                <li><a href="#">Page 2</a></li>
                                <li><a href="#">Page 3</a></li>
                            </ul>
                        </div>
                        <div class="content col-md-9" height="">-->

                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalSave">Add new Patient</button>
                            <br/>
                            <br/>
                            <div class="alert alert-success alert-dismissible" ng-show="message">
                                <a href="#" class="close" ng-click="messageClose()">&times;</a>
                                <strong>Success!</strong>{{message}}
                            </div>

                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th> p_id  </th>
                                        <th> f_name</th>
                                        <th> l_name</th>
                                        <th>email_address</th>
                                        <th>mobile</th>
                                        <th>blood_group</th>
                                        <th>sex</th>
                                        <th>birth_date</th>
                                        <th>address</th>
                                        <th colspan="2">Action</th>

                                    </tr>

                                </thead> 
                                <tbody ng-repeat="patient in patients">
                                    <tr>
                                        <td>{{$index + 1}}</td> 
                                        <td>{{patient.f_name}}</td>
                                         <td>{{patient.l_name}}</td>
                                        <td>{{patient.email_address}}</td>
                                        <td>{{patient.mobile}}</td>
                                        <td>{{patient.bloodgroup}}</td>
                                        <td>{{patient.sex}}</td>
                                        <td>{{patient.birthdate}}</td>
                                        <td>{{patient.address}}</td>
                                        <td><button type="button" data-toggle="modal" data-target="#myModalEdit" class="btn btn-primary" ng-click="selectPatient(patient)">Edit</button></td>
                                        <td><button type="button" data-toggle="modal" data-target="#myModalDelete" class="btn btn-success" ng-click="selectPatient(patient)">Delete</button></td>
                                    </tr>

                                </tbody>

                            </table>
                            <!--save Model-->

                            <div id="myModalSave" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Add new Patient</h4>
                                        </div>
                                        <div class="modal-body">

                                            <label for="f_name">f_name :</label>
                                            <input ng-model="newPatient.f_name" type="text" class="form-control" id="f_name">
                                        </div>
                                         <div class="modal-body">

                                            <label for="l_name">l_name :</label>
                                            <input ng-model="newPatient.l_name" type="text" class="form-control" id="l_name">
                                        </div>
                                        <div class="form-group">
                                            <label for="email_address">email_address</label>
                                              <input ng-model="newPatient.email_address" type="text" class="form-control" id="email_address">
                                        </div>
                                        <div class="form-group">
                                            <label for="mobile">mobile</label>
                                           <input ng-model="newPatient.mobile" type="text" class="form-control" id="mobile">
                                        </div>
                                         <div class="form-group">
                                            <label for="bloodgroup">bloodgroup</label>
                                            <input ng-model="newPatient.bloodgroup" type="text" class="form-control" id="bloodgroup">
                                        </div>
                                         <div class="form-group">
                                            <label for="sex">sex</label>
                                            <input ng-model="newPatient.sex" type="text" class="form-control" id="sex">
                                        </div>
                                         <div class="form-group">
                                            <label for="birthdate">birthdate</label>
                                            <input ng-model="newPatient.birthdate" type="text" class="form-control" id="birthdate">
                                        </div>
                                         <div class="form-group">
                                            <label for="address">address</label>
                                            <input ng-model="newPatient.address" type="text" class="form-control" id="address">
                                        </div>

                                        <button ng-click="savePatient()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--edit Model-->

                        <div id="myModalEdit" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Edit Patient</h4>
                                    </div>
                                    <div class="modal-body">

                                        <label for="f_name">f_name :</label>
                                        <input ng-model="clickedPatient.f_name" type="text" class="form-control" id="f_name">
                                    </div>
                                    
                                    <div class="modal-body">

                                        <label for="l_name">l_name :</label>
                                        <input ng-model="clickedPatient.l_name" type="text" class="form-control" id="l_name">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_address">email_address</label>
                                        <input ng-model="clickedPatient.email_address" type="text" class="form-control" id="email_address">
                                    </div>
                                    <div class="form-group">
                                        <label for="mobile">mobile</label>
                                      <input ng-model="clickedPatient.mobile" type="text" class="form-control" id="mobile">
                                    </div>
                                    <div class="form-group">
                                        <label for="bloodgroup">bloodgroup</label>
                                        <input ng-model="clickedPatient.bloodgroup" type="text" class="form-control" id="bloodgroup">
                                    </div>

                                    <div class="form-group">
                                        <label for="sex">sex</label>
                                        <input ng-model="clickedPatient.sex" type="text" class="form-control" id="sex">
                                    </div>

                                    <div class="form-group">
                                        <label for="birthdate">birthdate</label>
                                        <input ng-model="clickedPatient.birthdate" type="text" class="form-control" id="birthdate">
                                    </div>
                                        <div class="form-group">
                                        <label for="address">address</label>
                                        <input ng-model="clickedPatient.address" type="text" class="form-control" id="address">
                                    </div>
                                   


                                    <button ng-click="updatePatient()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!--deletet Model-->

                    <div id="myModalDelete" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">delete Patient</h4>
                                </div>
                                <div class="modal-body">

                                    you are new delete{{clickedPatient.f_name}}
                                </div>

                                <button ng-click="updatePatient()()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button ng-click="deletePatient()" type="button" class="btn btn-success" data-dismiss="modal">ok</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">cencel</button>
                            </div>
                        </div>

                    </div>
                </div>



            </div>
        </div>
    </div>
   <div>
        <div>
            <footer class="container-fluid text-center" style="background-color:black;">
      <center>
        <h2> Contact us</h2>
        <p>phone: +42190728860<br></br>
            Email: info@gmail.com <br></br>
            Address:32/East road,Mirpur,Dhaka,Bangladesh;<br></br>
               
            Copyright @ 2018.
            
  
  
  
  </p>
    </center>
   </footer>
</div>
</div>


</body>
</html>
