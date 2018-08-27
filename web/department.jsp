<%-- 
    Document   : department
    Created on : Apr 24, 2018, 12:12:55 PM
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
                    <h1><a href="">Department List</a></h1>
                </div>
                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">

                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="department.jsp">Department</a></li>
                                    <li><a href="blog.jsp">Blog</a></li>
                                    <li><a href="aboutus.jsp">About Us</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="content-area col-md-12">
                    <div class="row">
                        <div class="sidebar col-md-3">
                            <ul class="">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Page 1</a></li>
                                <li><a href="#">Page 2</a></li>
                                <li><a href="#">Page 3</a></li>
                            </ul>
                        </div>
                        <div class="content col-md-9" height="">

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
                                        <th> id  </th>
                                        <th>Department Name</th>
                                        <th>Description</th>
                                        <th>Status</th>
                                        <th colspan="2">Action</th>

                                    </tr>

                                </thead> 
                                <tbody ng-repeat="department in departments">
                                    <tr>
                                        <td>{{$index + 1}}</td> 
                                        <td>{{department.departname}}</td>
                                        <td>{{department.description}}</td>
                                        <td>{{department.departsta}}</td>
                                        <td><button type="button" data-toggle="modal" data-target="#myModalEdit" class="btn btn-primary" ng-click="selectDepartment(department)">Edit</button></td>
                                        <td><button type="button" data-toggle="modal" data-target="#myModalDelete" class="btn btn-success" ng-click="selectDepartment(department)">Delete</button></td>
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
                                            <h4 class="modal-title">Add Department</h4>
                                        </div>
                                        <div class="modal-body">

                                            <label for="departname">Department Name :</label>
                                            <input ng-model="newDepartment.departname" type="text" class="form-control" id="departname">
                                        </div>
                                        <div class="form-group">
                                            <label for="description">Description</label>
                                            <input ng-model="newDepartment.description" type="text" class="form-control" id="description">
                                        </div>
                                        <div class="form-group">
                                            <label for="departsta">departsta</label>
                                            <input ng-model="newDepartment.departsta" type="text" class="form-control" id="departsta">
                                        </div>

                                        <button ng-click="saveDepartment()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
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
                                        <h4 class="modal-title">Edit Department</h4>
                                    </div>
                                    <div class="modal-body">

                                        <label for="departname">Department Name :</label>
                                        <input ng-model="clickedDepartment.departname" type="text" class="form-control" id="departname">
                                    </div>
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <input ng-model="clickedDepartment.description" type="text" class="form-control" id="description">
                                    </div>
                                    <div class="form-group">
                                        <label for="departsta">departsta</label>
                                        <input ng-model="clickedDepartment.departsta" type="text" class="form-control" id="departsta">
                                    </div>

                                    <button ng-click="updateDepartment()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
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
                                    <h4 class="modal-title">delete Department</h4>
                                </div>
                                <div class="modal-body">

                                    you are new delete{{clickedDepartment.departname}}
                                </div>

                                <button ng-click="updateDepartment()" data-dismiss="modal" type="submit"  class="btn btn-success">Submit</button>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button ng-click="deleteDepartment()" type="button" class="btn btn-success" data-dismiss="modal">ok</button>
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
