<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<title>Customer Sign In</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Login&SignUp.css">
	<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
	
	<style>

	.main{
	width: 450px;
	height: 670px;
	background: red;
    
	overflow: hidden; 
	background: url("https://doc-08-2c-docs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiucmc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpEpnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38") no-repeat center/ cover;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	/* background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e); */
	background-color: rgb(255, 255, 255);
	font-family: 'Jost', sans-serif;
	margin-top: 3%;
	margin-left: 35%;
	
   }
		#chk{
			display: none;
		}
		.signup{
			position: relative;
		    top: 10%;
			width:100%;
			height: 100%;
		}
		 label{
			/* color: #573b8a; */
			color: #000;
			font-size: 2.3em;
			justify-content: center;
		
			display: flex;
			margin: 50px;
			font-weight: bold;
			cursor: pointer;
			transition: .5s ease-in-out;
		}
		
		
		input{
			width: 70%;
			height: 20px;
			background: #eeeded;
			justify-content: center;
			display: flex;
			margin: 20px auto;
			padding: 10px;
			border: none;
			outline: none;
			border-radius: 5px;
		}
		button{
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
		button:hover{
			/* background: #6d44b8; */
			background: #ff0000;
			color: rgb(255, 255, 255);
		}
		.login{
			height: 700px;
			background: #d3d3d3;
			border-radius: 60% / 10%;
			transform: translateY(-180px);
			transition: .8s ease-in-out;
		}
		.login label{
			/* color: #573b8a; */
			color: rgb(0, 0, 0);
			transform: scale(.6);
		}
		
		#chk:checked ~ .login{
			transform: translateY(-730px);
		}
		#chk:checked ~ .login label{
			transform: scale(1);	
		}
		#chk:checked ~ .signup label{
			transform: scale(.6);
		}
		 
		
		
		
		.content {
			position: absolute;
			top: 25%;
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
		  .content__container {
			font-weight: 600;
			overflow: hidden;
			height: 40px;
			margin: 0 10px;
		
		  }
		  .content__container:before {
			content: "[";
			left: 0;
		  }
		  .content__container:after {
			content: "]";
			position: absolute;
			right: 0;
		  }
		  .content__container:after, .content__container:before {
			position: absolute;
			top: 0;
			color: #ff0000;
			font-size: 30px;
			line-height: 40px;
			-webkit-animation-name: opacity;
			-webkit-animation-duration: 2s;
			-webkit-animation-iteration-count: infinite;
			animation-name: opacity;
			animation-duration: 2s;
			animation-iteration-count: infinite;
		  }
		  .content__container__text {
			display: inline;
			margin-left:30px;
			margin-top: 0px;
			float: left;
			/* margin: 0; */
		  }
		  .content__container__list {
			margin-top: 0;
			padding-left: 98px;
			text-align: left;
			list-style: none;
			-webkit-animation-name: change;
			-webkit-animation-duration: 10s;
			-webkit-animation-iteration-count: infinite;
			animation-name: change;
			animation-duration: 10s;
			animation-iteration-count: infinite;
		  }
		  .content__container__list__item {
			line-height: 40px;
			margin: 0;
		  }
		  
		  @-webkit-keyframes opacity {
			0%, 100% {
			  opacity: 0;
			}
			50% {
			  opacity: 1;
			}
		  }
		  @-webkit-keyframes change {
			0%, 12.66%, 100% {
			  transform: translate3d(0, 0, 0);
			}
			16.66%, 29.32% {
			  transform: translate3d(0, -25%, 0);
			}
			33.32%, 45.98% {
			  transform: translate3d(0, -50%, 0);
			}
			49.98%, 62.64% {
			  transform: translate3d(0, -75%, 0);
			}
			66.64%, 79.3% {
			  transform: translate3d(0, -50%, 0);
			}
			83.3%, 95.96% {
			  transform: translate3d(0, -25%, 0);
			}
		  }
		  @keyframes opacity {
			0%, 100% {
			  opacity: 0;
			}
			50% {
			  opacity: 1;
			}
		  }
		  @keyframes change {
			0%, 12.66%, 100% {
			  transform: translate3d(0, 0, 0);
			}
			16.66%, 29.32% {
			  transform: translate3d(0, -25%, 0);
			}
			33.32%, 45.98% {
			  transform: translate3d(0, -50%, 0);
			}
			49.98%, 62.64% {
			  transform: translate3d(0, -75%, 0);
			}
			66.64%, 79.3% {
			  transform: translate3d(0, -50%, 0);
			}
			83.3%, 95.96% {
			  transform: translate3d(0, -25%, 0);
			}
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
                                <li><a href="" class="navItem">SIGN IN</a></li>
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
				<form action = "${pageContext.request.contextPath}/CustomerLogin" method = "post">
                    <label for="chk" aria-hidden="true" style="margin-bottom: 40%;">Login</label>
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
                                <li class="content__container__list__item" style="color:darkslateblue">KIRI  !</li>
                                </ul>
                            </div>
                            </div>
                    <input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="pswd" placeholder="Password" required="">
					
					<button>Login</button>
				</form>
			</div>

			<div class="login">
                    
				
                    
					<label for="chk" aria-hidden="true">Sign up</label>
 				 <form action = "${pageContext.request.contextPath}/insert" method = "post">
                    
                    <input type="button" value="as Organization" class="button1" onclick="ShowHideDiv(this)" >
                    <input type="button" value="as User" class="button2" onclick="ShowHideDiv2(this)" >
                    
                    <div id="form1">
                       
                        <input type="text" placeholder="Organization name" id="txtPassportNumber" name = "Org_Name"/>
                    </div>
                    <div id="form2" style="display: none">
                       
                        <input type="text" placeholder="First Name" id="firstName" name = "firstName" />
                        <input type="text" placeholder="Last Name" id="lastName" name = "lastName" />
                    </div>
					<input type="text" name="username" placeholder="User name" required="" >
					<input type="email" name="email" placeholder="Email" required="" >
                    <input type="text" name="phone" placeholder="Contact number" required="">
					<input type="password" name="pswd" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"required="" >
					
					
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