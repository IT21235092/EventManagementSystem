<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<title>Customer Sign In</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Login&SignUp.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
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
     

    <script type="text/javascript">
        function ShowHideDiv(btnPassport) {
            var form1 = document.getElementById("form1");
            form1.style.display = btnPassport.value == "as Organization" ? "block" : "none";
            form2.style.display = "none";
        }

        function ShowHideDiv2(btnPassport) {
            var form1 = document.getElementById("form2");
            var form2 = document.getElementById("form1");
            form1.style.display = btnPassport.value == "as User" ? "block" : "none";

           form2.style.display = "none";

        }


    </script>
    
	
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form action = "${pageContext.request.contextPath}/insert" method = "post">
                    
					<label for="chk" aria-hidden="true">Sign up</label>

                    
                    <input type="button" value="as Organization" class="button1" onclick="ShowHideDiv(this)" >
                    <input type="button" value="as User" class="button2" onclick="ShowHideDiv2(this)" >
                   
                  
                    <div id="form1" style="display: none">
                        <input type="text" placeholder="Organization name" id="txtPassportNumber" name = "Org_Name"/>
                    </div>
                    <div id="form2" style="display: none">
                        <input type="text" name = "firstName" placeholder="First Name" id="txtPassportNumber" />
                        <input type="text" name = "lastName" placeholder="Last Name" id="txtPassportNumber" />
                    </div>
					<input type="text" name="username" placeholder="User name" required="">
					<input type="email" name="email" placeholder="Email" required="">
                    <input type="text" name="phone" placeholder="Contact number" required="">
					<input type="password" name="pswd" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"required="" >
					
					
				    <input type="submit" name = "Signup" value = "Signup" id = "submit">
				</form>
			</div>
			

			<div class="login">
				<form action = "${pageContext.request.contextPath}/CustomerLogin" method = "post">
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