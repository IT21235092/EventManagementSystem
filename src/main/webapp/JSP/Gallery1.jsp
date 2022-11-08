<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Gallery</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/gallery.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">

	 <style>
    	.black_overlay {
		  display: none;
		  position: absolute;
		  top: 0%;
		  left: 0%;
		  width: 100%;
		  height: 100%;
		  background-color: black;
		  z-index: 1001;
		  -moz-opacity: 0.8;
		  opacity: .80;
		  filter: alpha(opacity=80);
		}
		
		.white_content {
		  display: none;
		  position: absolute;
		  top: 20%;
		  left: 30%;
		  width: 33%;
		  height: 25%;
		  padding: 35px;
		  background-color: white;
		  z-index: 1002;
		  overflow: auto;
		  border-radius: 8px;
		}
		
		/* CSS */
		.button-50 {
		  appearance: button;
		  background-color: #000;
		  background-image: none;
		  border: 1px solid #000;
		  border-radius: 4px;
		  box-shadow: #fff 4px 4px 0 0,#000 4px 4px 0 1px;
		  box-sizing: border-box;
		  color: #fff;
		  cursor: pointer;
		  display: inline-block;
		  font-family: ITCAvantGardeStd-Bk,Arial,sans-serif;
		  font-size: 14px;
		  font-weight: 400;
		  line-height: 20px;
		  margin: 20px 40px 10px 40px;
		  overflow: visible;
		  padding: 12px 40px;
		  text-align: center;
		  text-transform: none;
		  touch-action: manipulation;
		  user-select: none;
		  -webkit-user-select: none;
		  vertical-align: middle;
		  white-space: nowrap;
		  width: 30%;
		}

		.button-50:focus {
		  text-decoration: none;
		}
		
		.button-50:hover {
		  text-decoration: none;
		}
		
		.button-50:active {
		  box-shadow: rgba(0, 0, 0, .125) 0 3px 5px inset;
		  outline: 0;
		}
		
		.button-50:not([disabled]):active {
		  box-shadow: #fff 2px 2px 0 0, #000 2px 2px 0 1px;
		  transform: translate(2px, 2px);
		}
		
		@media (min-width: 768px) {
		  .button-50 {
		    padding: 12px 50px;
		  }
		}
		
		h2
		{
		   text-align:center;
		   font-size: 35px;
		}

    
    </style>
</head>
<body>
 
  <div id="light" class="white_content"><a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"></a>
	  <h2>Sign In As</h2>
	  <button class="button-50" role="button" id = "myButton1">Customer</button>
	  <button class="button-50" role="button" id = "myButton2">Vendor</button>
	  </div>
  <div id="fade" class="black_overlay"></div>
  
  <script type="text/javascript">
	    document.getElementById("myButton1").onclick = function () {
	        location.href = "CLoginSignup.jsp";
	    };
	    
	    document.getElementById("myButton2").onclick = function () {
	        location.href = "VLoginSignup.jsp";
	    };
 </script>
    <header >
        <div class="navbar">
                <div class = "logo">
                    <img src = "${pageContext.request.contextPath}/Images/logo.png">
                </div>
                        <nav>
                            <ul>
                                <li> <a href="Home.jsp" class="navItem">HOME</a></li>
                                <li> <a href="#"class="navItem">EVENTS</a></li>
                                <li> <a href="#"class="navItem">GALLERY</a></li>
                                <li> <a href="About_Us.jsp" class="navItem">ABOUT US</a></li>
                                <li><a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'" class="navItem">SIGN IN</a></li>
                            </ul>
                        </nav>
                        
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

<div class="cont">
<div class="cont2">
<h1>Gallery</h1>
</div>
<div class="container-all">
<div class="container">
 <a href="Gallery2.jsp"> <img src="https://bit.ly/2PvlS8Z" alt="">
   <span class="title">Weddings</span>
  <span class="text">Wedding practices in different cultures A wedding is a ceremony where two people are united in marriage.</span> </a>
</div>
<div class="container">
    <a href="Gallery2.jsp"><img src="https://bit.ly/2PXNumM" alt=""> 
  <span class="title">Conference</span>
  <span class="text">A convention, in the sense of a meeting, is a gathering of individuals who meet at an arranged place and time in order to discuss or engage in some common interest.</span>
</a></div>
<div class="container">
    <a href="Gallery2.jsp"> <img src="https://bit.ly/2KbUszm" alt=""> 
   <span class="title">Concerts</span>
  <span class="text">MA concert is a live music performance in front of an audience. The performance may be by a single musician, sometimes then called a recital, or by a musical ensemble, such as an orchestra, choir, or band.</span>
</a></div>
<div class="container">
    <a href="Gallery2.jsp"><img src="https://bit.ly/2FnhYul" alt=""> 
   <span class="title">Birthdays</span>
  <span class="text">A birthday is the anniversary of the birth of a person, or figuratively of an institution. Birthdays of people are celebrated in numerous cultures</span>
</a></div>
<div class="container">
    <a href="Gallery2.jsp"> <img src="https://bit.ly/2FznWrU" alt=""> 
   <span class="title">Parties</span>
  <span class="text">A party is a gathering of people who have been invited by a host for the purposes of socializing, conversation, recreation, or as part of a festival or other commemoration or celebration of a special occasion.</span>
</a></div>
<div class="container">
    <a href="Gallery2.jsp"> <img src="https://bit.ly/2zd3HLf" alt=""> 
   <span class="title">Festivals</span>
  <span class="text">A festival is an event ordinarily celebrated by a community and centering on some characteristics aspect of that community and its religion or cultures.</span>
</a></div>
</div>
</div>
</body></html>