<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Journal Management Solution</title>
  <link rel="shortcut icon" href="../img/umicon.jpg" type="image/x-icon" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <style>
    /* Stackoverflow preview fix, please ignore */
    .navbar-nav {
      flex-direction: row;
    }
    
    .nav-link {
      padding-right: .5rem !important;
      padding-left: .5rem !important;
    }
    
    /* Fixes dropdown menus placed on the right side */
    .ml-auto .dropdown-menu {
      left: auto !important;
      right: auto;
    }
  </style>
  <style>
     @media (min-width: 768px) {
		  .modal-xl {
			width: 90%;
		    max-width:1700px;
		  }
		}
  </style>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <img src="img/umicon.jpg" alt="logo" style="width:60px;border-radius:20px;">
  </a>
  <h4 style="color:white;font-family:roboto;">Journal Management Solution</h4>
  
  
   <ul class="navbar-nav ml-auto">
    
	 <li class="nav-item">
      <a class="nav-link active" href="Home.jsp" id="navbarDropdown" >Home</a>
      
    </li>
	  
    <li class="nav-item">
      <a class="nav-link " href="#" id="navbarDropdown" >Employee</a>
      
    </li>
	
	<li class="nav-item">
      <a class="nav-link " href="#" id="navbarDropdown" >Utility Detail Setup</a>
    </li> 
	
    <li class="nav-item">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Utility</a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a class="dropdown-item" href="#">Assign Utility</a>
		<a class="dropdown-item" href="#">Utility Device</a>
		<a class="dropdown-item" href="#">Assign Office Utility</a>
        <a class="dropdown-item" href="#">Returned Utility</a>
        <a class="dropdown-item" href="#">Returned Device Utility</a>
        <a class="dropdown-item" href="#">Returned Office Utility</a>
        
      </div>
    </li>
	
	
	<li class="nav-item">
      <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">CUG</a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a class="dropdown-item" href="#">Create CUG</a>
		<a class="dropdown-item" href="#">Assign CUG</a>
        <a class="dropdown-item" href="#">Update Bill</a>
        <a class="dropdown-item" href="#">Pay Bill</a>
      </div>
    </li>
	
	
	
	<li class="nav-item">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Bill Management</a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a class="dropdown-item" href="#">Upload Bills</a>
        <a class="dropdown-item" href="#">Pay Bills</a>
        
      </div>
    </li>
	
	<li class="nav-item">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Report</a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a class="dropdown-item" href="#">Utility Report</a>
        <a class="dropdown-item" href="#">Bill Report</a>
        
      </div>
    </li>
	
	
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Accountant</a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a class="dropdown-item" href="#">Settings</a>
        <a class="dropdown-item" href="Login.jsp">Logout</a>
      </div>
    </li>
	
	
  </ul>
</nav>


<br><br><br>
<h3 align="center"></h3><br>


<div class="container text-center">
  <button type="button" class="btn btn-dark" style="padding:15px 120px 15px 120px;" data-toggle="modal" data-target="#mobileModal">
   Mobile Bill approvals pending&nbsp;&nbsp;<span class="badge badge-light">2</span>
</button>
<br><br>
<button type="button" class="btn btn-dark" style="padding:15px 108px 15px 108px;" data-toggle="modal" data-target="#telephoneModal">
  Telephone Bill approvals pending&nbsp; <span class="badge badge-light">4</span>
</button>
<br><br>
<button type="button" class="btn btn-dark" style="padding:15px 114px 15px 114px;" data-toggle="modal" data-target="#elecModal">
  Electricity Bill approvals pending&nbsp;&nbsp;<span class="badge badge-light">0</span>
</button>
<br><br>
<button type="button" class="btn btn-dark" style="padding:15px 126px 15px 126px;" data-toggle="modal" data-target="#waterModal">
  Water Bill approvals pending&nbsp; <span class="badge badge-light">0</span>
</button>
<br><br>


<!-- Mobile Modal -->
  <div class="modal fade" id="mobileModal" role="dialog">
    <div class="modal-dialog modal-xl">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
		<h4 class="modal-title">Mobile Bill Approvals</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          
		  <table class="table table-striped table-responsive">
			  <thead>
				<tr>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Sl No.</th>
				<th scope="col" style="  white-space: nowrap;
				width: 1%;">Utility</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Service Provider</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Amount Limit</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Amount</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Extra Amount</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Date</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Due Date</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">View Bill</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Approval</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Pay</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Status</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Receipt</th>
				</tr>
			  </thead>
			  <tbody>
				<tr>
				  <td>1</td>
				  <td>Mobile</td>
				  <td>Airtel</td>
				  <td>500</td>
				  <td>560</td>
				  <td>60</td>
				  <td>05-Mar-2019</td>
				  <td>19-Mar-2019</td>
				  <td>abc.pdf</td>
				  <td>Pending..</td>
				  <td><button>Pay</button></td>
				  <td>Pending..</td>
				  <td><button>View</button></td>
				 </tr>
				 <tr>
				  <td>2</td>
				  <td>Mobile</td>
				  <td>Airtel</td>
				  <td>500</td>
				  <td>700</td>
				  <td>200</td>
				  <td>07-Mar-2019</td>
				  <td>19-Mar-2019</td>
				  <td>xyz.pdf</td>
				  <td>Pending..</td>
				  <td><button>Pay</button></td>
				  <td>Pending..</td>
				  <td><button>View</button></td>
				 </tr>
			  </tbody>
     	</table>
		  
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" style="background-color:#FFAAAA;color:white;" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
</div>

<!-- Telephone Modal -->
  <div class="modal fade" id="telephoneModal" role="dialog">
    <div class="modal-dialog modal-xl">
    
      <!--  Modal content-->
      <div class="modal-content">
        <div class="modal-header">
		<h4 class="modal-title">Telephone Bill Approvals</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          
		  <table class="table table-striped table-responsive">
			  <thead>
				<tr>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Sl No.</th>
				<th scope="col" style="  white-space: nowrap;
				width: 1%;">Utility</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Service Provider</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Amount Limit</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Amount</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Extra Amount</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Date</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Due Date</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">View Bill</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Approval</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Pay</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Status</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Receipt</th>
				</tr>
			  </thead>
			  <tbody>
				<tr>
				  <td>1</td>
				  <td>Telephone</td>
				  <td>BSNL</td>
				  <td>600</td>
				  <td>560</td>
				  <td>0</td>
				  <td>10-Mar-2019</td>
				  <td>25-Mar-2019</td>
				  <td>abc.pdf</td>
				  <td>Pending..</td>
				  <td><button>Pay</button></td>
				  <td>Pending..</td>
				  <td><button>View</button></td>
				 </tr>
				 <tr>
				  <td>2</td>
				  <td>Telephone</td>
				  <td>BSNL</td>
				  <td>500</td>
				  <td>700</td>
				  <td>200</td>
				  <td>10-Mar-2019</td>
				  <td>25-Mar-2019</td>
				  <td>xyz.pdf</td>
				  <td>Pending..</td>
				  <td><button>Pay</button></td>
				  <td>Pending..</td>
				  <td><button>View</button></td>
				 </tr>
				 <tr>
				  <td>3</td>
				  <td>Telephone</td>
				  <td>BSNL</td>
				  <td>800</td>
				  <td>900</td>
				  <td>100</td>
				  <td>10-Mar-2019</td>
				  <td>25-Mar-2019</td>
				  <td>lmn.pdf</td>
				  <td>Pending..</td>
				  <td><button>Pay</button></td>
				  <td>Pending..</td>
				  <td><button>View</button></td>
				 </tr>
				 <tr>
				  <td>4</td>
				  <td>Telephone</td>
				  <td>BSNL</td>
				  <td>800</td>
				  <td>700</td>
				  <td>0</td>
				  <td>10-Mar-2019</td>
				  <td>25-Mar-2019</td>
				  <td>pqr.pdf</td>
				  <td>Pending..</td>
				  <td><button>Pay</button></td>
				  <td>Pending..</td>
				  <td><button>View</button></td>
				 </tr>
			  </tbody>
     	</table>
		  
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" style="background-color:#FFAAAA;color:white;" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


<!--Electricity Modal -->
  <div class="modal fade" id="elecModal" role="dialog">
    <div class="modal-dialog modal-xl">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
		<h4 class="modal-title">Electricity Bill Approvals</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          
		  <table class="table table-striped table-responsive">
			  <thead>
				<tr>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Sl No.</th>
				<th scope="col" style="  white-space: nowrap;
				width: 1%;">Utility</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Service Provider</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Amount Limit</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Amount</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Extra Amount</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Date</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Due Date</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">View Bill</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Approval</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Pay</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Status</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Receipt</th>
				</tr>
			  </thead>
			  <tbody>
				
				  
			  </tbody>
     	</table>
		  <p class="text-center" style="font-size:20px;">No pending approvals</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" style="background-color:#FFAAAA;color:white;" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

<!--Water Modal -->
  <div class="modal fade" id="waterModal" role="dialog">
    <div class="modal-dialog modal-xl">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
		<h4 class="modal-title">Electricity Bill Approvals</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          
		  <table class="table table-striped table-responsive">
			  <thead>
				<tr>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Sl No.</th>
				<th scope="col" style="  white-space: nowrap;
				width: 1%;">Utility</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Service Provider</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 1%;">Amount Limit</th>
				  <th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Amount</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Extra Amount</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Date</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Due Date</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">View Bill</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Approval</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Pay</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Status</th>
				<th scope="col" style="  white-space: nowrap;
				width: 7%;">Bill Receipt</th>
				</tr>
			  </thead>
			  <tbody>
				
				  
			  </tbody>
     	</table>
		  <p class="text-center" style="font-size:20px;">No pending approvals</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" style="background-color:#FFAAAA;color:white;" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


</body>
</html>