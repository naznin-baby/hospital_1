<%-- 
    Document   : appointment
    Created on : Apr 28, 2018, 9:56:11 AM
    Author     : Naznin34
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
            @import "css/custom_css.css";
            .body{
              

            }
            .header, .footer-area{
                border: 1px solid #DDD;
                padding: 20px;
                margin-top: 10px;
                box-shadow: 0px 0px 10px #DDD;
                background-color:black;
            }
            .jumbotron{
                margin-top: 15px; 
            }
            .content-area, .menu{
                background-color:#ccccff;
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

                <div class="jumbotron" style="background: url('images/appointmentlist.jpg')no-repeat top">
                    <div class="container text-center">
                        <h2>Appointment List</h2> 
                    </div>
                </div>
                <!--                <div class="header col-md-12">
                                    <h1><a href="">Appointment List</a></h1>
                                </div>-->

                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">

                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="department.jsp">Department</a></li>
                                    <li><a href="doctor.jsp">Doctor</a></li>
                                    <li><a href="appointment.jsp">Appointment</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="content-area col-md-12">
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

                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalSave">Add Appointment</button>
                    <br/>
                    <br/>
                    <div class="alert alert-success alert-dismissible" ng-show="message">
                        <a href="#" class="close" ng-click="messageClose()">&times;</a>
                        <strong>Success!</strong>{{message}}
                    </div>

                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th> a_id  </th>
                                <th> patient_id</th>
                                <th>departmentname</th>
                                <th>doctorname</th>
                                <th>appointmentdate</th>
                                <th>serialno</th>
                                <th>problem</th>

                                <th colspan="2">Action</th>

                            </tr>

                        </thead> 
                        <tbody ng-repeat="appointment in appointments">
                            <tr>
                                <td>{{$index + 1}}</td> 
                                <td>{{appointment.patient_id}}</td>
                                <td>{{appointment.departmentname}}</td>
                                <td>{{appointment.doctorname}}</td>
                                <td>{{appointment.appointmentdate}}</td>
                                <td>{{appointment.serialno}}</td>
                                <td>{{appointment.problem}}</td>

                                <td><button type="button" data-toggle="modal" data-target="#myModalEdit" class="btn btn-primary" ng-click="selectAppointment(appointment)">Edit</button></td>
                                <td><button type="button" data-toggle="modal" data-target="#myModalDelete" class="btn btn-success" ng-click="selectAppointment(appointment)">Delete</button></td>
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
                                    <h4 class="modal-title">Add Appointment</h4>
                                </div>
                                <div class="modal-body">

                                    <label for="patient_id">patient_id :</label>
                                    <input ng-model="newAppointment.patient_id" type="text" class="form-control" id="patient_id">
                                </div>
                                <div class="form-group">
                                    <label for="departmentname">departmentname</label>
                                    <select ng-model="newAppointment.departmentname" class="form-control" id="departmentname" type="text">
                                        <option value="">select departmentname: departmentname</option>
                                        <option  ng-repeat="departmentlist in departments">{{departmentlist.departname}}</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="doctorname">doctorname</label>
                                    <select ng-model="newAppointment.doctorname" class="form-control" id="doctorname" type="text">
                                        <option value="">select doctorname: doctorname</option>
                                        <option  ng-repeat="doctorlist in doctors">{{doctorlist.name}}</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="appointmentdate">appointmentdate</label>
                                    <input ng-model="newAppointment.appointmentdate" type="text" class="form-control" id="appointmentdate">
                                </div>
                                <div class="form-group">
                                    <label for="serialno">serialno</label>
                                    <input ng-model="newAppointment.serialno" type="text" class="form-control" id="serialno">
                                </div>
                                <div class="form-group">
                                    <label for="problem">problem</label>
                                    <input ng-model="newAppointment.problem" type="text" class="form-control" id="problem">
                                </div>
                                <!--                                         <div class="form-group">
                                                                            <label for="specilist">specilist</label>
                                                                            <input ng-model="newDoctor.specilist" type="text" class="form-control" id="specilist">
                                                                        </div>-->

                                <button ng-click="saveAppointment()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
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
                                <h4 class="modal-title">Edit appointment</h4>
                            </div>
                            <div class="modal-body">

                                <label for="patient_id">patient_id :</label>
                                <input ng-model="clickedAppointment.patient_id" type="text" class="form-control" id="patient_id">
                            </div>
                            <div class="form-group">
                                <label for="departmentname">departmentname</label>
                                <select ng-model="newAppointment.departmentname" class="form-control" id="departmentname" type="text">
                                    <option value="">select doctor: doctortname</option>
                                    <option  ng-repeat="departmentlist in departments">{{departmentlist.departname}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="doctorname">doctorname</label>
                                <select ng-model="newAppointment.doctorname" class="form-control" id="doctorname" type="text">
                                    <option value="">select doctor: doctortname</option>
                                    <option  ng-repeat="doctorlist in doctors">{{doctorlist.name}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="appointmentdate">appointmentdate</label>
                                <input ng-model="clickedAppointment.appointmentdate" type="text" class="form-control" id="appointmentdate">
                            </div>

                            <div class="form-group">
                                <label for="serialno">serialno</label>
                                <input ng-model="clickedAppointment.serialno" type="text" class="form-control" id="serialno">
                            </div>

                            <div class="form-group">
                                <label for="problem">problem</label>
                                <input ng-model="clickedAppointment.problem" type="text" class="form-control" id="problem">
                            </div>
                            <!--                                        <div class="form-group">
                                                                    <label for="specilist">specilist</label>
                                                                    <input ng-model="clickedDoctor.specilist" type="text" class="form-control" id="specilist">
                                                                </div>
                            -->


                            <button ng-click="updateAppointment()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
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
                            <h4 class="modal-title">delete Doctor</h4>
                        </div>
                        <div class="modal-body">

                            you are new delete{{clickedAppointment.patient_id}}
                        </div>

                        <button ng-click="updateAppointment()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button ng-click="deleteAppointment()" type="button" class="btn btn-success" data-dismiss="modal">ok</button>
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
            <footer class="container-fluid text-center" style="background-color:black">
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

