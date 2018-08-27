var myApp = angular.module('myApp', []);


myApp.controller('myCtrl', function ($scope, $http) {
    $scope.message = "";
    $scope.error_message = "";
//    get All Product

    $scope.getAllDepartment = function () {
        console.log("getAllDepartment");
        $http({
            method: "GET",
            url: 'http://localhost:8080/Hospital_Management/webresources/departments'
        }).then(
                function (response) {
                    $scope.departments = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );

    };

    $scope.getAllDepartment();


//save product

$scope.newDepartment = {};

$scope.saveDepartment =function(){
  $http({
      method: "POST",
      url:'http://localhost:8080/Hospital_Management/webresources/departments',
      data:angular.toJson($scope.newDepartment),
      headers:{
        'Content-Type' : 'application/json'
          
      }
  }).then(
                function (response) {
                    $scope.message = "Department save successfully";
                     $scope.getAllDepartment();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
  
);



 

};


//select product

$scope.clickedDepartment = {};
$scope.selectDepartment = function(department){
    $scope.clickedDepartment =department;
    
};
//update product

$scope.updateDepartment = function(){
    $http({
        
        method: 'PUT',
        url:'http://localhost:8080/Hospital_Management/webresources/departments',
        data:angular.toJson($scope.clickedDepartment),
        
         headers:{
        'Content-Type' : 'application/json'
    }
      }).then(
                function (response) {
                    $scope.message = "Department update successfully";
                     $scope.getAllDepartment();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
  
);
     
    
  };
  
  //delete product
  
  $scope.deleteDepartment = function(){
      $http({
          method:'DELETE',
          url:'http://localhost:8080/Hospital_Management/webresources/departments/'+$scope.clickedDepartment.id,
      }).then(
                function (response) {
                    $scope.message = "Department deleted successfully";
                     $scope.getAllDepartment();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
  
);
    
  }; 
//clear message
$scope.messageClose = function (){
    
    $scope.message = "";
    $scope.error_message = ""; 
};



 //get all Doctor
    $scope.getAllDoctor = function () {
        $http({
            mehtod: "GET",
            url: 'http://localhost:8080/Hospital_Management/webresources/doctors'
        }).then(
                function (response) {
                    $scope.doctors = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    $scope.getAllDoctor();


    //save Doctor
    $scope.newDoctor = {};
    $scope.saveDoctor = function () {
        $http({
            method: "POST",
            url: 'http://localhost:8080/Hospital_Management/webresources/doctors',
            data: angular.toJson($scope.newDoctor),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Doctor Saved Successfully";
                    $scope.getAllDoctor();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Select doctor by click
    
    $scope.clickedDoctor = {};
    $scope.selectDoctor = function(doctor){
       
        $scope.clickedDoctor = doctor;
    };
    
    //Update doctor
   $scope.updateDoctor = function(){
    $http({
        
        method: 'PUT',
        url:'http://localhost:8080/Hospital_Management/webresources/doctors',
        data:angular.toJson($scope.clickedDoctor),
        
         headers:{
        'Content-Type' : 'application/json'
    }
      }).then(
                function (response) {
                    $scope.message = "Doctor update successfully";
                     $scope.getAllDoctor();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
  
);
     
    
  };
    
    //Delete doctor
    $scope.deleteDoctor = function () {
        $http({
            method: "DELETE",
            url: 'http://localhost:8080/Hospital_Management/webresources/doctors/'+$scope.clickedDoctor.d_id,
            data: angular.toJson($scope.newDoctor),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "doctor Deleted Successfully";
                    $scope.getAllDoctor();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    //Clear message
    
    $scope.messageClose = function(){
        $scope.message = "";
    $scope.error_mesage = "";
    }







});
