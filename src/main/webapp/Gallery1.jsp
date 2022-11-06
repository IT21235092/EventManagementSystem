<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Slide Navbar</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/gallery.css">
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

<div class="cont">
<div class="cont2">
<h1>Gallery</h1>
</div>
<div class="container-all">
<div class="container">
 <a href="gallery2.html"> <img src="https://bit.ly/2PvlS8Z" alt="">
   <span class="title">Weddings</span>
  <span class="text">Wedding practices in different cultures A wedding is a ceremony where two people are united in marriage.</span> </a>
</div>
<div class="container">
    <a href="gallery2.html"><img src="https://bit.ly/2PXNumM" alt=""> 
  <span class="title">Conference</span>
  <span class="text">A convention, in the sense of a meeting, is a gathering of individuals who meet at an arranged place and time in order to discuss or engage in some common interest.</span>
</a></div>
<div class="container">
    <a href="gallery2.html"> <img src="https://bit.ly/2KbUszm" alt=""> 
   <span class="title">Concerts</span>
  <span class="text">MA concert is a live music performance in front of an audience. The performance may be by a single musician, sometimes then called a recital, or by a musical ensemble, such as an orchestra, choir, or band.</span>
</a></div>
<div class="container">
    <a href="gallery2.html"><img src="https://bit.ly/2FnhYul" alt=""> 
   <span class="title">Birthdays</span>
  <span class="text">A birthday is the anniversary of the birth of a person, or figuratively of an institution. Birthdays of people are celebrated in numerous cultures</span>
</a></div>
<div class="container">
    <a href="gallery2.html"> <img src="https://bit.ly/2FznWrU" alt=""> 
   <span class="title">Parties</span>
  <span class="text">A party is a gathering of people who have been invited by a host for the purposes of socializing, conversation, recreation, or as part of a festival or other commemoration or celebration of a special occasion.</span>
</a></div>
<div class="container">
    <a href="gallery2.html"> <img src="https://bit.ly/2zd3HLf" alt=""> 
   <span class="title">Festivals</span>
  <span class="text">A festival is an event ordinarily celebrated by a community and centering on some characteristics aspect of that community and its religion or cultures.</span>
</a></div>
</div>
</div>
</body></html>