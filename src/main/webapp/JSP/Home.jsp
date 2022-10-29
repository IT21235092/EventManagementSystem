<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home page</title>
    <link rel="stylesheet" href="../CSS/Home.css">
    
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
            </div> -->
        </div> 
</header>
  
    
    <section>
            
    <div class="container">
        <video autoplay muted loop autoplay class="backv">
            <source src="../Images/vdd.mp4" type="video/mp4">
        </video>
            <div class="overlay"></div>
    </div>
    <h2 id="text">Lets make your events colorful</h2>    
    
    
    <form method="post">
        <label></label>
        <div class="sbox">
        <input type="text" class="search-txt" name="search" placeholder="Search">
        <input type="submit" name="submit" value="Go" id="nm">
        <ion-icon name="search-outline"></ion-icon>
        </div>	
        </form>

        <div class="para">
            <h2>UNPARALLELED, STRESS-FREE</h2><br>
            <h1>EVENT PLANNING & DESIGN</h1><br><br>
            <p>The Infinity experience is unlike any other. Our full-service event planning and design team will guide you every step of the way, ensuring a stress-free<br>
                 experience from start to finish.<br><br>
                 With us, customization is guaranteed. From the very beginning, we will create a custom proposal tailored to your specific wants and needs. You'll be paired<br>
                  with an Infinity Event Team who will collaborate with you to bring your vision to life. We will team up with some of the best vendors in Nashville and take<br>
                   care of the all the details like meeting scheduling, delivery dates, payments, day-of setup, and more.<br><br>

                 When it’s showtime, our staff will work tirelessly to guarantee your event is effortless and unforgettable.</p>
            <br><br><br>
                 
                    <a href="#">FIND OUT MORE</a>
               

        </div>

        

        <div class="slider">
            <div class="slider-wrapper flex">
                <div class="slide flex">
                    <div class="slide-image slider-link prev"><img src="../Images/CN1.jpeg"><div class="overlay"></div></div>
                    <div class="slide-content">
                        <div class="slide-date">30.07.2017.</div>
                        <div class="slide-title">Weddings</div>
                        <div class="slide-text">Lorem ipsum dolor sit amet, ad est abhorreant efficiantur,  </div>
                        <div class="slide-more"><a href="#">SEE GALLERY</a></div>
                    </div>	
                </div>
               
               
                
                <div class="slide flex">
                    <div class="slide-image slider-link next"><img src="../Images/BD3.jpeg"><div class="overlay"></div></div>
                    <div class="slide-content">
                        <div class="slide-date">30.08.2022.</div>
                        <div class="slide-title">Birthday Parties</div>
                        <div class="slide-text">Wow your guests with a unique corporate<br> experience that aligns with your company's mission and <br>elevates your brand.</div>
                        <div class="slide-more"><a href="#">SEE GALLERY</a></div>
                    </div>	
                </div>	
               
                <div class="slide flex">
                    <div class="slide-image slider-link next"><img src="../Images/WED1.jpeg"><div class="overlay"></div></div>
                    <div class="slide-content">
                        <div class="slide-date">30.09.2022.</div>
                        <div class="slide-title">Weddings</div>
                        <div class="slide-text">With every last detail taken care of, we're here to ensure<br> the day you've always dreamed of will be<br> the day you'll never forget.</div>
                        <div class="slide-more"><a href="#">SEE GALLERY</a></div>
                    </div>	
                </div>
                    <div class="slide flex">
                    <div class="slide-image slider-link next"><img src="../Images/CN1.jpeg"><div class="overlay"></div></div>
                    <div class="slide-content">
                        <div class="slide-date">30.10.2022.</div>
                        <div class="slide-title">Concerts</div>
                        <div class="slide-text">From a show stopping engagement celebration to an <br>epic surprise birthday party, you dream it and we'll make<br> it a reality.

                        </div>
                        <div class="slide-more"><a href="#">SEE GALLERY</a></div>
                    </div>	
                </div>
               
                
            </div>
            <div class="arrows">
            <a href="#" title="Previous" class="arrow slider-link prev"></a>
            <a href="#" title="Next" class="arrow slider-link next"></a>
            </div>
            </div>
            <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
            <script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.1/TweenMax.min.js'></script>
            
                <script src="../JS/hm.js"></script>
            

        
        <script>
            if(window.history.replaceState)
            {
                window.history.replaceState(null,null,window.location.href)
            }



            var className = "inverted";
var scrollTrigger = 700;



window.onscroll = function() {
  // We add pageYOffset for compatibility with IE.
  if (window.scrollY >= scrollTrigger || window.pageYOffset >= scrollTrigger) {
    document.getElementsByTagName("header")[0].classList.add(className);
  } else {
    document.getElementsByTagName("header")[0].classList.remove(className);
  }
};



            </script>




 <div class="xv">
    

  <!-- <h1>sdfsdfdsf</h1> -->
 </div>
 
 </section>

 <footer>
    <img class="logo1" src="../Images/logo.png" >
    <p id="cprt">Copyright © 2022 Eventrra. Website design & management by Team 1.</p>
    <div class="social-container">
        <ul class="social-icons">
            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        </ul>
    </div>    
    

</footer>
</body>    
</html>