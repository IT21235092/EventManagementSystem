<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


    
<!DOCTYPE html>
<html>
<head>
	<title>Vendor SignIn</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Login&SignUp.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">


<style>

 .signup label{
	/* color: #573b8a; */
	color: #000;
	font-size: 2.3em;
	justify-content: center;

	display: flex;
	margin: 50px;
	margin-bottom: 20%;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

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

.content {
	position: absolute;
	top: 20%;
	left: 50%;
	width: 50%;
	transform: translate(-50%, -50%);
	height: 160px;
	overflow: hidden;
	font-family: "Lato", sans-serif;
	font-size: 20px;
	font-weight:bolder;
	line-height: 40px;
	color: black;
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
                                <li> <a href="${pageContext.request.contextPath}/JSP/Gallery1.jsp"class="navItem">GALLERY</a></li>
                                <li> <a href="${pageContext.request.contextPath}/JSP/About_Us.jsp" class="navItem">ABOUT US</a></li>
                                <li><a href="#" class="navItem">SIGN IN</a></li>
                            </ul>
                        </nav>
            </div> 
    </header>
     
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form action = "${pageContext.request.contextPath}/VendorLogin" method = "post">
					<label for="chk" aria-hidden="true">Login</label>
					
					<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

                            <div class="content">
                            <div class="content__container">
                                <p class="content__container__text">
                                Hello
                                </p>
                                
                                <ul class="content__container__list">
                                <li class="content__container__list__item" style="color:cadetblue">LOVERS !</li>
                                <li class="content__container__list__item" style="color:coral">VIEWERS !</li>
                                <li class="content__container__list__item" style="color:darkcyan">USERS  !</li>
                                <li class="content__container__list__item" style="color:darkslateblue">Eventeers!</li>
                                </ul>
                            </div>
                            </div>
					<input type="email" name="email" placeholder="Email" required>
					<input type="password" name="pswd" placeholder="Password" required>
					<input type = "submit" name = "Login" value = "Login" id = "submit">
				</form>
				
			</div>
			

			<div class="login">
				<form action = "${pageContext.request.contextPath}/insertV" method = "post">
                    
					<label for="chk" aria-hidden="true">Sign up</label>
					
                    <input type="text" placeholder="Organization name" id="txtPassportNumber" name = "Org_Name"/>
					<input type="text" name="username" placeholder="User name" required>
					<input type="email" name="email" placeholder="Email" required>
                    <input type="text" name="phone" placeholder="Contact number" pattern = "[0-9]{10}" title="Enter a 10 digit number" required>
					<input type="password" name="pswd" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"required>
					
		
				      <select name="types" id="type" required>
				        <option value="" disabled selected>Type</option>
				        <option value="Music">Music</option>
				        <option value="Food and Drinks">Food and Drinks</option>
				        <option value="Decorations">Decorations</option>
				        <option value="Photos">Photos</option>
				        <option value="Invitation Cards">Invitation Cards</option>
				        <textarea placeholder='address' maxlength='1000' minlength='10' name = "address" required></textarea>
				      </select>
					
		
				    <input type="submit" name = "Signup" value = "Signup" id = "submit">
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