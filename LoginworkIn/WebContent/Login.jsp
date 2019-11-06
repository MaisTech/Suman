<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>Journal Management Solution</title>
  <link rel="shortcut icon" href="img/umicon.jpg" type="image/x-icon" />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/login.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  
  
  
  <style>.heart{color:#e25555;}</style>
  
  
  <script type="text/javascript">
		

		function myFunction(){

			var x = document.getElementById('login').value;
  
			 if(x == ""){
				document.getElementById('vspgname').innerHTML =" * Plz fill the username field";
				return false;
			}  
			if((x.length <= 2) || (x.length > 20)) {
				document.getElementById('vspgname').innerHTML =" * user name length must be between 2 and 20";
				return false;	
			}
			if(!isNaN(x)){
				document.getElementById('vspgname').innerHTML =" * only characters are allowed";
				return false;
			}
			else {
			document.getElementById('vspgname').innerHTML ="";
			
				return false;
			}
		
		}
		
		
		

		function myFunction1(){

			
	
		
		
			var y = document.getElementById('password').value;
			 if(y == ""){
					document.getElementById('vspsw').innerHTML =" * Plz enter the password";
					return false;
				}  
				if((y.length <= 2) || (y.length > 5)) {
					document.getElementById('vspsw').innerHTML =" * Enter the correct password";
					return false;	
				}
				else {
				document.getElementById('vspsw').innerHTML ="";
			
					return false;
				}
		
		
		
		
		}
			</script>
  
  
  
  
  
  
</head>
<body>
<div class="jumbotron text-center">
  <h1>Journal Management Solution</h1>
  
</div>
  
<div class="container">
  <div class="row">
     <div class="wrapper fadeInDown">
		  <div id="formContent">
			<!-- Tabs Titles -->

			<!-- Icon -->
			<div class="fadeIn first">
			  <img src="img/jms.png" height="140px" width="140px" id="icon" alt="User Icon" />
			</div>

			<!-- Login Form          -->
			<form>
			  <input type="text" id="login" class="fadeIn second" name="login" placeholder="User Id" onblur="myFunction()">
			  <input type="text" id="password" class="fadeIn third" name="login" placeholder="Password" onblur="myFunction1()">
			  <input type="button" class="fadeIn fourth" onclick="location.href='SuperAdmin.jsp'" value="Log In">
			 
			</form>

			<!-- Remind Password -->
			<div id="formFooter">
			  <a class="underlineHover" onclick="location.href='SuperAdmin.jsp'">Admin Home Page</a>
			</div>
			
		  </div>
</div>
  </div>
  <span id="vspgname" class="text-danger font-weight-bold"> </span>
  <span id="vspsw" class="text-danger font-weight-bold"> </span>
</div>
<footer>
<div class="jumbotron text-center">
        <small>&copy; Copyright 2019,</small>	
Made with <span class="heart">❤</span> in MAIS Technologies Pvt Ltd.
		</div>
</footer>
</body>
</html>