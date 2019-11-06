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
			  <img src="img/umicon.jpg" height="140px" width="140px" id="icon" alt="User Icon" />
			</div>

			<!-- Login Form -->
			<form>
			  <input type="text" id="login" class="fadeIn second" name="login" placeholder="User Id">
			  <input type="text" id="password" class="fadeIn third" name="login" placeholder="Password">
			  <input type="button" class="fadeIn fourth" onclick="location.href='Home.jsp'" value="Log In">
			  <input type="button" class="fadeIn fourth" onclick="location.href='Home.jsp'" value="Register">
			</form>

			<!-- Remind Password -->
			<div id="formFooter">
			  <a class="underlineHover" href="Home.jsp">Forget Password</a>
			</div>
			
		  </div>
</div>
  </div>
</div>
<footer>
<div class="jumbotron text-center">
        <small>&copy; Copyright 2019,</small>	
Made with <span class="heart">❤</span> in MAIS Technologies Pvt Ltd.
		</div>
</footer>
</body>
</html>