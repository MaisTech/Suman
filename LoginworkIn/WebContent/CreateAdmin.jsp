<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.myums.model.Admin"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
<script> 
var App=angular.module('UMSApp',[]);
App.controller("myController",function($scope,$http,$log){
	

	$scope.buttonText="Add";
	
	$scope.submit = function() {
		if($scope.buttonText=='Add'){
			$http({
				method:'POST',
				url:'CreateEmployee',
				headers: {'Content-Type': 'application/json'},
				data:  $scope.Emp
		});
			$scope.message ="Record Added successfully";
		}else if($scope.buttonText=='Update'){
			$http({
				method:'POST',
				url:'UpdateEmployee',
				headers: {'Content-Type': 'application/json'},
				data:  $scope.Emp
		});
			$scope.message ="Record Updated successfully";
		}else if($scope.buttonText=='Delete'){
			$http({
				method:'POST',
				url:'DeleteEmployee',
				headers: {'Content-Type': 'application/json'},
				data:  $scope.Emp
		});
			$scope.message ="Record Deleted successfully";
		}
		window.location.reload(); 
	};


	 $scope.reset = function(){
		 window.location.reload(); 
			document.getElementById("empdep").value=""; //reset Form
			document.getElementById("empeid").value=""; 
			document.getElementById("empnam").value=""; 
			document.getElementById("empmob").value=""; 
			document.getElementById("empemail").value=""; 
			document.getElementById("empacc").value="";
	    };
	    
	  //call all employee  
	    getEmployees();
		
		function getEmployees(){
			var success=function(response){
				$scope.employees=response.data;
				$log.info(response);
			};
			
			var error=function(reason){
				$scope.error=reason.data;
				$log.info(reason);
			};
			
			$http({
				method:'GET',
				url:'GetAllEmployees'
				}).then(success,error);
		}

	    $scope.updateEmployee = function (employee) {
			$scope.Emp=employee;
			$scope.buttonText="Update";		
		 };
	    
	    $scope.deleteEmployee = function (employee) {
			$scope.Emp=employee;
			$scope.buttonText="Delete";		
		 };

	    
	    
	   	
});




</script>




<title>Utility Management Software</title>
  <link rel="shortcut icon" href="../img/umicon.jpg" type="image/x-icon" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <style>
    / Stackoverflow preview fix, please ignore /
    .navbar-nav {
      flex-direction: row;
    }
    
    .nav-link {
      padding-right: .5rem !important;
      padding-left: .5rem !important;
    }
    
    / Fixes dropdown menus placed on the right side /
    .ml-auto .dropdown-menu {
      left: auto !important;
      right: auto;
    }
  </style>
</head>




<body ng-app="UMSApp">
<div ng-controller="myController">






<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <img src="img/jms.png" alt="logo" style="width:60px;border-radius:20px;">
  </a>
  <h4 style="color:white;font-family:roboto;">Journal Management Solution</h4>
  
  
   <ul class="navbar-nav ml-auto">
    
	 <li class="nav-item">
      <a class="nav-link active" href="SuperAdmin.jsp" id="navbarDropdown" >Home</a>
      
    </li>
	  
    <li class="nav-item">
      <a class="nav-link " href="#" id="navbarDropdown" >Admin's</a>
      
    </li>
	
	<li class="nav-item">
      <a class="nav-link " href="#" id="navbarDropdown" >Stock</a>
    </li> 
	
    <li class="nav-item">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Reports</a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a class="dropdown-item" href="#">Assign Utility</a>
		<a class="dropdown-item" href="#">Utility Device</a>
		<a class="dropdown-item" href="#">Assign Office Utility</a>
        <a class="dropdown-item" href="#">Returned Utility</a>
        <a class="dropdown-item" href="#">Returned Device Utility</a>
        <a class="dropdown-item" href="#">Returned Office Utility</a>
        
      </div>
    </li>
	
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Super Admin</a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a class="dropdown-item" href="#">Settings</a>
        <a class="dropdown-item" href="Login.jsp">Logout</a>
      </div>
    </li>
	
	
  </ul>
</nav>

<br><br><br>
<h3 align="center">ADMINS</h3>
<div class="container-fluid">
<div class="row">

<br>
<div class="col-sm-1"></div>

   <div class="col-sm-10">
    <div class="row">
	   <div class="col-sm-4">First Name &nbsp;&nbsp;&nbsp;&nbsp; <input style="margin-top:5px" class="form-control col-sm-8 " type="text" id="fname" name="firstname" ng-model="AdmLogin.firstname" placeholder="First Name" aria-label="Search" required></div>
	   <div class="col-sm-4">Last Name &nbsp;&nbsp;&nbsp;&nbsp; <input style="margin-top:5px" class="form-control col-sm-8 " type="text" id="lname" name="lastname" ng-model="AdmLogin.lastname" placeholder="Last Name" aria-label="Search" required></div>
	   <div class="col-sm-4">User ID  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input style="margin-top:5px" class="form-control col-sm-8 " id="uid" type="text" name="userid" ng-model="AdmLogin.uid"  placeholder="User ID" aria-label="Search" required></div>
	</div>
	<br>
	<div class="row">
	   <div class="col-sm-4">Mobile &nbsp;&nbsp;&nbsp; <input style="margin-top:5px" class="form-control col-sm-8 " type="text" id="mob" name="mobile" ng-model="AdmLogin.mobile" placeholder="Mobile No." aria-label="Search" required></div>
	   <div class="col-sm-4">Email &nbsp;&nbsp;&nbsp; <input style="margin-top:5px" class="form-control col-sm-8 " type="text" id="email" name="mail" ng-model="AdmLogin.mail" placeholder="Email" aria-label="Search" required></div>
	   <div class="col-sm-4">Password &nbsp;&nbsp;&nbsp; <input style="margin-top:5px" class="form-control col-sm-8 " type="text" id="psw" name="password" ng-model="AdmLogin.password" placeholder="Password" aria-label="Search" required></div>
	</div>
       
       <br> 
     <div class="text-center">
      <button   class="btn btn-dark my-2 my-sm-0" type="button" ng-click="submit()" >{{buttonText}}</button>  
	  &nbsp;&nbsp;&nbsp; 
	  <button style="background:white;border:1px solid black;color:black;"  class="btn  btn-secondary my-2 my-sm-0" type="button" ng-click="reset()">Clear</button>
     </div>	   
	 
 </div>

<div class="col-sm-1"></div>


</div>
</div>
<br><br>
<div class="container">
  <table class="table table-striped  table-responsive" >
  <thead>
    <tr>
      <th scope="col" style="  white-space: nowrap;
    width: 1%;">First Name</th>
      <th scope="col" style="  white-space: nowrap;
    width: 1%;">Last Name</th>
      <th scope="col" style="  white-space: nowrap;
    width: 1%;">User ID</th>
	<th scope="col" style="  white-space: nowrap;
    width: 1%;">Mobile</th>
	<th scope="col" style="  white-space: nowrap;
    width: 1%;">Email</th>
	
	<th scope="col" style="  white-space: nowrap;
    width: 1%;">Edit</th>
      <th scope="col" style="  white-space: nowrap;
    width: 1%;">Delete</th>
	
    </tr>
  </thead>
  <tbody>
    <tr ng-repeat="employee in employees">
	  <td>{{employee.department}}</td>
	  <td>{{employee.empid}}</td>
	  <td>{{employee.name}}</td>
	  <td>{{employee.mobile}}</td>
      <td>{{employee.mail}}</td>

	 <td><button type="button" ng-click="updateEmployee(employee)">Edit</button></td>
	 <td><button type="button" ng-click="deleteEmployee(employee)">Delete</button></td>
	 <%
 com.myums.model.Admin tc = new com.myums.model.Admin();
  tc.setEmail("Suman@xyx.com");
  tc.setFirstname("suman");
  tc.setLastname("Roshan");
  
  tc.setPassword("1234");
  tc.setUserid("Sum123");
  
  
%>
	 
    </tr>
  </tbody>
</table>
</div>







</div>

</body>
</html>