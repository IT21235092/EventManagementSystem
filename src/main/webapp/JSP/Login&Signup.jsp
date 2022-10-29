<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Slide Navbar</title>
	<link rel="stylesheet" type="text/css" href="../CSS/Login&SignUp.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
 
    <header >
        <div class="navbar">
                <div class = "logo">
                    <img src = "../Images/logo.png">
                </div>
                        <nav>
                            <ul>
                                <li> <a href="#" class="navItem">HOME</a></li>
                                <li> <a href="#"class="navItem">EVENTS</a></li>
                                <li> <a href="#"class="navItem">GALLERY</a></li>
                                <li> <a href="#" class="navItem">ABOUT US</a></li>
                                <li><a href="#" class="navItem">SIGN IN</a></li>
                            </ul>
                        </nav>
                 <!-- <div class="btns">
                    <button class="btn" onclick = >Sign Up</button>
                    <button class="btn" onclick = >Log In</button>
                </div>  -->
            </div> 
        </div>
    </header>
     

    <script type="text/javascript">
        function ShowHideDiv(btnPassport) {
            var dvPassport = document.getElementById("dvPassport");
            dvPassport.style.display = btnPassport.value == "as Organization" ? "block" : "none";
            dvPassport2.style.display = "none";
        }

        function ShowHideDiv2(btnPassport) {
            var dvPassport = document.getElementById("dvPassport2");
            var dvPassport2 = document.getElementById("dvPassport");
            dvPassport.style.display = btnPassport.value == "as User" ? "block" : "none";

            dvPassport2.style.display = "none";

        }


    </script>
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form>
                    
					<label for="chk" aria-hidden="true">Sign up</label>

                    
                    <input type="button" value="as Organization" class="button1" onclick="ShowHideDiv(this)" >
                    <input type="button" value="as User" class="button2" onclick="ShowHideDiv2(this)" >
                    <!-- <input type="button" value="No" onclick="ShowHideDiv(this)" > -->
                    
                    
                    <div id="dvPassport" style="display: none">
                       
                        <input type="text" placeholder="Organization name" id="txtPassportNumber" />
                    </div>
                    <div id="dvPassport2" style="display: none">
                       
                        <input type="text" placeholder="First Name" id="txtPassportNumber" />
                        <input type="text" placeholder="Last Name" id="txtPassportNumber" />
                    </div>
					<input type="text" name="txt" placeholder="User name" required="">
					<input type="email" name="email" placeholder="Email" required="">
                    <input type="text" name="phone" placeholder="Contact number" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					<button>Sign up</button>
				</form>
			</div>

			<div class="login">
				<form>
					<label for="chk" aria-hidden="true">Login</label>
					<input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					<button>Login</button>
				</form>
			</div>
	</div>
</body>
</html>