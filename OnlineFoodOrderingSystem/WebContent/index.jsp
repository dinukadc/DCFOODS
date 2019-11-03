<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DC'S FOODS</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<header class="back-gr">
		<div class="wrapper">
			<div class="logo">
			<img src="images/logo.png" alt="">
			</div>
			 <ul class="nav-area">
				<li><a href="#">Home</a></li>
				<li><a href="#">Menu</a></li>
				<li><a href="#">View</a></li>
				<li><a href="#">About</a></li>
				
			</ul>
		</div>
		
		<div class="welcome-text">
			<h1>A Fascinating Flavour Experience..!!</h1>
			<br>
			<br>
			<a href="#" id="button">Get Start</a>
		</div>
		<form method="post" action="LoginCheck">
		<div class="popup">
		<div class="popup-content">
		<img src="images/close.png" alt="Close" class="close">
		<img src="images/user.png" alt="User">
		<input type="text" name="usr" placeholder="Username" required>
		<input type="password" name="pwd" placeholder="Password" required>
		<input type="submit" class="button" value="Login">
		<div class="sign-txt">Don't have an account? <a href="#" id="signup" class="sign">Sign Up</a></div>
		
		</div>
		</div>
		</form>
		<script>
		
		document.getElementById("button").addEventListener("click",function()
		{
			document.querySelector(".popup").style.display = "flex";
		})
		document.querySelector(".close").addEventListener("click",function()
		{
			document.querySelector(".popup").style.display = "none";
		})
			document.getElementById("authL").addEventListener("click",function(){
	
		document.getElementById("authL").value='';
		})
		</script>
		
		<form method="post" action="InsertCustomer"> 
		
		<div class="pop">
		<div class="pop-content">
		<img src="images/close.png" alt="Close" class="close2">
		<img src="images/sign.png" alt="User">
		<input type="text" name="fnme" placeholder="First Name.." required>
		<input type="text" name="lnme" placeholder="Last Name.." required>
		<input type="email"name="mail" placeholder="Email...." required>
		<input type="text" name="pno" placeholder="Phone Number (0xx-xxxxxxx)" pattern="[0-9]{3}-[0-9]{7}" required>
		<input type="text" name="uname" placeholder="Username.." required>
		<input type="password" name="pword" placeholder="Password" required>
		<input list="authority" name="access" id="auth" placeholder="authority..">
		<datalist id="authority">
		<option value="Admin">
		<option value="User">
		</datalist>
		<input type="submit" class="button" value="Submit">
		<div class="login-txt">Already have an account? <a href="#" id="signin" class="sign">Sign In</a></div>
		</div>
		</div>
		</form> 
		<script>
		
		document.getElementById("signup").addEventListener("click",function()
		{
			document.querySelector(".pop").style.display = "flex";
			document.querySelector(".popup").style.display = "none";
			
		})
		document.querySelector(".close2").addEventListener("click",function()
		{
			document.querySelector(".pop").style.display = "none";
		})
			document.getElementById("signin").addEventListener("click",function()
		{
			document.querySelector(".pop").style.display = "none";
			document.querySelector(".popup").style.display = "flex";
			
		})
		document.getElementById("auth").addEventListener("click",function(){
	
		document.getElementById("auth").value='';
		})
		
		</script>
		
	</header>
</body>
</html>