<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


    
<!DOCTYPE html>
<html>
<head>
	<title>Vendor SignIn</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Login&SignUp.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">

<style>

select
{
	width: 75%;
	height: 40px;
	background: #eeeded;
	justify-content: center;
	display: flex;
	margin: 20px auto;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
	
}

textarea
{
	width: 70%;
	height: 40px;
	background: #eeeded;
	justify-content: center;
	display: flex;
	margin: 20px auto;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}

</style>

</head>

<body>
 
    <header >
        <div class="navbar">
                <div class = "logo">
                    <img src = "${pageContext.request.contextPath}/Images/logo.png">
                </div>
                        <nav>
                            <ul>
                                <li> <a href="${pageContext.request.contextPath}/JSP/Home.jsp" class="navItem">HOME</a></li>
                                <li> <a href="#"class="navItem">EVENTS</a></li>
                                <li> <a href="#"class="navItem">GALLERY</a></li>
                                <li> <a href="#" class="navItem">ABOUT US</a></li>
                                <li><a href="#" class="navItem">SIGN IN</a></li>
                            </ul>
                        </nav>
            </div> 
        </div>
    </header>
     


    </script>
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form action = "${pageContext.request.contextPath}/insertV" method = "post">
                    
					<label for="chk" aria-hidden="true">Sign up</label>
					
                    <input type="text" placeholder="Organization name" id="txtPassportNumber" name = "Org_Name"/>
					<input type="text" name="username" placeholder="User name" required="">
					<input type="email" name="email" placeholder="Email" required="">
                    <input type="text" name="phone" placeholder="Contact number" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					
		
				      <select name="types" id="type" required ="">
				        <option value="" disabled selected>Type</option>
				        <option value="Music">Music</option>
				        <option value="Food and Drinks">Food and Drinks</option>
				        <option value="Decorations">Decorations</option>
				        <option value="Photos">Photos</option>
				        <option value="Invitation Cards">Invitation Cards</option>
				        <textarea placeholder='address' maxlength='1000' minlength='10' name = "address" required = ""></textarea>
				      </select>
					
		
				    <input type="submit" name = "Signup" value = "Signup" id = "submit">
				</form>
			</div>
			

			<div class="login">
				<form action = "${pageContext.request.contextPath}/VendorLogin" method = "post">
					<label for="chk" aria-hidden="true">Login</label>
					<input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					<input type = "submit" name = "Login" value = "Login" id = "submit">
					
					
					</form>
			</div>
	</div>
</body>

   <style>

		 #submit
		{
			width: 60%;
			height: 40px;
			margin: 10px auto;
			justify-content: center;
			display: block;
			color: #fff;
			/* background: #573b8a; */
			background: #000;
			font-size: 1em;
			font-weight: bold;
			margin-top: 20px;
			outline: none;
			border: none;
			border-radius: 5px;
			transition: .2s ease-in;
			cursor: pointer;
		}
		
		
		#submit:hover{
			/* background: #6d44b8; */
			background: #ff0000;
			color: rgb(255, 255, 255);
		}


   </style>
</html>