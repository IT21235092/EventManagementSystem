<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Gallery</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/gallery2.css">
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
                                <li> <a href="Gallery1.jsp"class="navItem">GALLERY</a></li>
                                <li> <a href="About_Us.jsp" class="navItem">ABOUT US</a></li>
                                <li><a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'" class="navItem">SIGN IN</a></li>
                            </ul>
                        </nav>
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




<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400&display=swap" rel="stylesheet">
<div class="cont2">
	<h1>Weddings</h1>
	</div>
<div class="gallery">
   

	<div class="gallery__column">
		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://hips.hearstapps.com/hmg-prod/images/paris-hilton-wedding-photo-credit-jose-villashutterstock-1636744956.jpg?resize=980:*" alt="Portrait by Jessica Felicio" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Jessica Felicio</figcaption>
			</figure>
		</a>

		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://ktla.com/wp-content/uploads/sites/4/2021/06/wedding.jpg?w=960&h=540&crop=1" alt="Portrait by Oladimeji Odunsi" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Oladimeji Odunsi</figcaption>
			</figure>
		</a>

		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://www.washingtonian.com/wp-content/uploads/2022/09/img_M_J_wedding_preview-28-cropped.jpg" alt="Portrait by Alex Perez" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Alex Perez</figcaption>
			</figure>
		</a>
	</div>
	
	<div class="gallery__column">
		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://www.3wisemen.co.nz/media/wysiwyg/FormalWedding_Image4.1.png" alt="Portrait by Noah Buscher" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Noah Buscher</figcaption>
			</figure>
		</a>
		
		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://www.3wisemen.co.nz/media/wysiwyg/SmartCasual_Image4.png" alt="Portrait by Ivana Cajina" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Ivana Cajina</figcaption>
			</figure>
		</a>

		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://people.com/thmb/GpXSMHXb3IoptBtPEy5hgWWLfEY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(619x404:621x406):format(webp)/haley-ferguson-wedding-3-770b527a20864b91a9ed996d4f1603dc.jpg" alt="Portrait by Sam Burriss" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Sam Burriss</figcaption>
			</figure>
		</a>
	</div>
	
	<div class="gallery__column">
		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://source.unsplash.com/Xm9-vA_bhm0/300x500" alt="Portrait by Mari Lezhava" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Mari Lezhava</figcaption>
			</figure>
		</a>
		
		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://images.squarespace-cdn.com/content/v1/59814e04f14aa15c5c9a262c/1590621452141-RH3426UFKFOF54QCSFSM/Emily+Hugo+bride+celebrating+with+bouquet+and+confetti++%E2%80%93+Christchuch+Weddings?format=750w" alt="Portrait by Ethan Haddox" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Ethan Haddox</figcaption>
			</figure>
		</a>

		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://people.com/thmb/-wcmUePWGZ3zqDRT1prkZPx-TBQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(629x209:631x211):format(webp)/haley-ferguson-wedding-6-8a8ee9124dc340078e2154cfa52a0a64.jpg" alt="Portrait by Amir Geshani" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Amir Geshani</figcaption>
			</figure>
		</a>
	</div>
	
	<div class="gallery__column">
		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://namakwari.co.za/wp-content/uploads/2020/04/Namakwari-Website-Photo-Sizing-4.jpg" alt="Portrait by Guilian Fremaux" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Guilian Fremaux</figcaption>
			</figure>
		</a>

		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://adelaidepopupweddings.com.au/wp-content/uploads/Gallery-3.jpg" alt="Portrait by Jasmin Chew" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Jasmin Chew</figcaption>
			</figure>
		</a>
		
		<a href="#" target="_blank" class="gallery__link">
			<figure class="gallery__thumb">
				<img src="https://cdn.shopify.com/s/files/1/0136/1081/1451/products/159_c3034b2f-ea97-4126-a0eb-583e5a98c4c8_1024x1024@2x.jpg?v=1554441630" alt="Portrait by Dima DallAcqua" class="gallery__image">
				<figcaption class="gallery__caption">Portrait by Dima DallAcqua</figcaption>
			</figure>
		</a>
	</div>
</div>






</body></html>