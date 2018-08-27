<%-- 
    Document   : doctor
    Created on : Apr 26, 2018, 9:21:21 AM
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
                    <h1><a href="">Doctor List</a></h1>
                </div>
                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">

                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="department.jsp">Department</a></li>
                                    <li><a href="doctor.jsp">Doctor</a></li>
                                    <li><a href="aboutus.jsp">About Us</a></li>
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

                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalSave">Add Department</button>
                            <br/>
                            <br/>
                            <div class="alert alert-success alert-dismissible" ng-show="message">
                                <a href="#" class="close" ng-click="messageClose()">&times;</a>
                                <strong>Success!</strong>{{message}}
                            </div>

                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th> d_id  </th>
                                        <th> name</th>
                                        <th>email_address</th>
                                        <th>department</th>
                                        <th>address</th>
                                        <th>mobile</th>
                                        <th>education_quylifa</th>
                                        <th>specilist</th>
                                        <th colspan="2">Action</th>

                                    </tr>

                                </thead> 
                                <tbody ng-repeat="doctor in doctors">
                                    <tr>
                                        <td>{{$index + 1}}</td> 
                                        <td>{{doctor.name}}</td>
                                        <td>{{doctor.email_address}}</td>
                                        <td>{{doctor.department}}</td>
                                        <td>{{doctor.address}}</td>
                                        <td>{{doctor.mobile}}</td>
                                        <td>{{doctor.education_quylif}}</td>
                                        <td>{{doctor.specilist}}</td>
                                        <td><button type="button" data-toggle="modal" data-target="#myModalEdit" class="btn btn-primary" ng-click="selectDoctor(doctor)">Edit</button></td>
                                        <td><button type="button" data-toggle="modal" data-target="#myModalDelete" class="btn btn-success" ng-click="selectDoctor(doctor)">Delete</button></td>
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
                                            <h4 class="modal-title">Add Doctor</h4>
                                        </div>
                                        <div class="modal-body">

                                            <label for="name">name :</label>
                                            <input ng-model="newDoctor.name" type="text" class="form-control" id="name">
                                        </div>
                                        <div class="form-group">
                                            <label for="email_address">email_address</label>
                                              <input ng-model="newDoctor.email_address" type="text" class="form-control" id="email_address">
                                        </div>
                                        <div class="form-group">
                                            <label for="department">department</label>
                                            <select ng-model="newDoctor.department" class="form-control" id="department" type="text">
                                                <option value="">select department: department NAME</option>
                                                <option  ng-repeat="departmentlist in departments">{{departmentlist.departname}}</option>
                                            </select>
                                        </div>
                                         <div class="form-group">
                                            <label for="address">address</label>
                                            <input ng-model="newDoctor.address" type="text" class="form-control" id="address">
                                        </div>
                                         <div class="form-group">
                                            <label for="mobile">mobile</label>
                                            <input ng-model="newDoctor.mobile" type="text" class="form-control" id="mobile">
                                        </div>
                                         <div class="form-group">
                                            <label for="education_quylif">education_quylif</label>
                                            <input ng-model="newDoctor.education_quylif" type="text" class="form-control" id="education_quylif">
                                        </div>
                                         <div class="form-group">
                                            <label for="specilist">specilist</label>
                                            <input ng-model="newDoctor.specilist" type="text" class="form-control" id="specilist">
                                        </div>

                                        <button ng-click="saveDoctor()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
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
                                        <h4 class="modal-title">Edit doctor</h4>
                                    </div>
                                    <div class="modal-body">

                                        <label for="name">name :</label>
                                        <input ng-model="clickedDoctor.name" type="text" class="form-control" id="name">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_address">email_address</label>
                                        <input ng-model="clickedDoctor.email_address" type="text" class="form-control" id="email_address">
                                    </div>
                                    <div class="form-group">
                                        <label for="department">department</label>
                                       <select ng-model="newDoctor.department" class="form-control" id="department" type="text">
                                                <option value="">select department: department NAME</option>
                                                <option  ng-repeat="departmentlist in departments">{{departmentlist.departname}}</option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="address">address</label>
                                        <input ng-model="clickedDoctor.address" type="text" class="form-control" id="address">
                                    </div>

                                    <div class="form-group">
                                        <label for="mobile">mobile</label>
                                        <input ng-model="clickedDoctor.mobile" type="text" class="form-control" id="mobile">
                                    </div>

                                    <div class="form-group">
                                        <label for="education_quylif">education_quylif</label>
                                        <input ng-model="clickedDoctor.education_quylif" type="text" class="form-control" id="education_quylif">
                                    </div>
                                        <div class="form-group">
                                        <label for="specilist">specilist</label>
                                        <input ng-model="clickedDoctor.specilist" type="text" class="form-control" id="specilist">
                                    </div>
                                   


                                    <button ng-click="updateDoctor()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
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

                                    you are new delete{{clickedDoctor.name}}
                                </div>

                                <button ng-click="updateDoctor()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button ng-click="deleteDoctor()" type="button" class="btn btn-success" data-dismiss="modal">ok</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">cencel</button>
                            </div>
                        </div>

                    </div>
                </div>



            </div>
        </div>
    </div>
    <div class="footer-area col-md-12">
        footer
    </div>
</div>
</div>

</body>
</html>
