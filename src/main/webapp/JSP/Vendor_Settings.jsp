<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/settings.css">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title> Vendor Settings | Eventrra</title>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
	<link href = "https://cdn.jsdelivr.net/npm/@mdi/font@6.9.96/css/materialdesignicons.min.css" rel = "stylesheet">
</head>
<body>
     <div class="sidebar">
        <div class="logo-details">
        <!-- ***************LOGO************* -->
            <img src = "${pageContext.request.contextPath}/Images/logo.png">
            <i class='bx bx-menu' id="btn" ></i>
        </div>
        <ul class="nav-list">
        <li>
            <a href="${pageContext.request.contextPath}/JSP/Vendor_dashboard.jsp"  >
                <i class='bx bxs-dashboard'></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="http://localhost:8080/EventManagementSystem/showAdServlet">
                <i class='bx bxs-message-square-add'></i>
                <span class="links_name">Services</span>
            </a>
        </li>
        
        <li>
            <a href="http://localhost:8080/EventManagementSystem/InitialSettings2"  class = "colored">
                <i class='bx bx-cog colored' ></i>
                <span class="links_name">Settings</span>
            </a>
        </li>
        </ul>
    </div>

<!-- JavaScript -->
<script>
    let sidebar = document.querySelector(".sidebar");
    let closeBtn = document.querySelector("#btn");
    let searchBtn = document.querySelector(".bx-search");

    closeBtn.addEventListener("click", ()=>
    {
        sidebar.classList.toggle("open");
        menuBtnChange();//calling the function(optional)
    });

    searchBtn.addEventListener("click", ()=>
    { // Sidebar open when you click on the search iocn
        sidebar.classList.toggle("open");
        menuBtnChange(); //calling the function(optional)
    });

    // following are the code to change sidebar button(optional)
    function menuBtnChange() 
    {
    if(sidebar.classList.contains("open")){
        closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
    }else {
        closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
    }
    }
</script>

<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <span class="dashboard">Dashboard</span>
        </div>
       <div class="container">
            <div class="half">
              <label for="profile2" class="profile-dropdown">
                <input type="checkbox" id="profile2">
                <img src="https://cdn0.iconfinder.com/data/icons/avatars-3/512/avatar_hipster_guy-512.png">
                <span><h6><% out.println(session.getAttribute("username").toString()); %></h6></span>
                <label style = "width: 15%;" for="profile2"><i class="mdi mdi-menu"></i></label>
                <ul>
                  <li><a href="http://localhost:8080/EventManagementSystem/JSP/VLoginSignup.jsp" onclick="logout()"><i class="mdi mdi-logout"></i>Logout</a></li>
                </ul>
              </label>
            </div>
          </div>
    </nav>
    
    <script>
        	function logout() {
        		var txt;
        		if (confirm("Are you sure you want to log out?")) {
        			txt = "You logged out";
        		}
        	}
        </script>
    
<c:forEach var = "ven" items = "${venDetails}">

<div class="container">
<div class="row justify-content-center">
    <div class="col-12 col-lg-10 col-xl-8 mx-auto">
        <h2 class="h3 mb-4 page-title">Settings</h2>
        <div class="my-4">
            <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Profile</a>
                </li>
            </ul>
            <form action = "http://localhost:8080/EventManagementSystem/Settings2" method = "post">
                <div class="row mt-5 align-items-center">
                    <div class="col-md-3 text-center mb-5">
                        <div class="avatar avatar-xl">
                            <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="..." class="avatar-img rounded-circle" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="row align-items-center">
                            <div class="col-md-7">
                                <h4 class="mb-1"></h4>
                                <p class="small mb-3"><span class="badge badge-dark">New York, USA</span></p>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-7">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="my-4" />
                 <div class="form-group">
                    <label for="organization">Organization</label>
                    <input type="text" class="form-control" name = "organization" value = '${ven.getOrg_Name()}' id="organization"/>
                </div>

                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name = "username" value = '${ven.getUsername()}' id="username"/>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name = "email"  value = '${ven.getEmail()}' id="email"/>
                </div>
                <div class="form-group">
                    <label for="phone">Contact Number</label>
                    <input type="text" class="form-control" name = "phone" value = '${ven.getContact_no()}' id="phone"/>
                </div>
                 <div class="form-group">
                    <label for="type">Type</label>
                    <select name="types" class = "form-control" id="type">
				        <option value="" disabled selected>${ven.getType()}</option>
				        <option value="Music">Music</option>
				        <option value="Food and Drinks">Food and Drinks</option>
				        <option value="Decorations">Decorations</option>
				        <option value="Photos">Photos</option>
				        <option value="Invitation Cards">Invitation Cards</option>
				      </select>
                </div>
                <div class="form-group">
                    <label for="address">Location</label>
                    <textarea placeholder='address' class = "form-control" maxlength='1000' minlength='100' name = "address" value = '${ven.getLocation()}'></textarea>
                </div>
                
              
                <hr class="my-4" />
                       <div class="row mb-4">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputPassword4">Old Password</label>
                            <input type="password" class="form-control" name = "inputPassword4" value = '${ven.getPassword()}' id="inputPassword4" readonly/>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword5">New Password</label>
                            <input type="password" class="form-control" name = "inputPassword5" id="inputPassword5" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
                        </div>
                        <div class="form-group">
                            <label for="inputPassword6">Confirm Password</label>
                            <input type="password" class="form-control"  name = "inputPassword6" id="inputPassword6" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
                            <p id="validate-status"></p>
                        </div>
                        
                        <script>
                        
                        $(document).ready(function() {
                        	  $("#inputPassword6").keyup(validate);
                        	});


                        	function validate() {
                        	  var password1 = $("#inputPassword5").val();
                        	  var password2 = $("#inputPassword6").val();
                        	  console.log("hello")
                        	  console.log(password1);
                        	  console.log(password1);
                        	  
                        	  
                        	 
                        	    if(password1 == password2) {
                        	       $("#validate-status").text("Passwords match");        
                        	    }
                        	    else {
                        	       $("#validate-status").text("Passwords do not match");  
                        	    }
                        	    
                        	}
                        
                        	
                        </script>
                    </div>
                    <div class="col-md-6">
                        <p class="mb-2">Password requirements</p>
                        <p class="small text-muted mb-2">To create a new password, you have to meet all of the following requirements:</p>
                        <ul class="small text-muted pl-4 mb-0">
                            <li>Minimum 8 character</li>
                            <li>At least one special character</li>
                            <li>At least one number</li>
                            <li>Can’t be the same as a previous password</li>
                        </ul>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Save Changes</button>
                   <a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'; window.scrollTo(10,50);" class="btn btn-primary delete">Delete Account</a>
            </form>
            
             <div id="light" class="white_content"><a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"></a>
				  <h2>Delete your Account?</h2>
				  <button class="button-50" role="button" id = "myButton1" >Yes</button>
				  <button class="button-50" role="button" id = "myButton2" >No</button>
				  </div>
			  <div id="fade" class="black_overlay"></div>
			  
			  <script type="text/javascript">
			    
			    document.getElementById("myButton1").onclick = function () {
			        location.href = "DeleteVendor";
			    };
			    
			    document.getElementById("myButton2").onclick = function () {
			        location.href = "InitialSettings2";
			    };
			  </script> 
			    
        </div>
    </div>


</div>

</div>

</c:forEach>
</section>

<script type="text/javascript">

</script>
</body>
<style>

.black_overlay {
		  display: none;
		  position: absolute;
		  top: 0%;
		  left: 0%;
		  width: 430%;
		  height: 100%;
		  background-color: black;
		  z-index: 1001;
		  -moz-opacity: 0.8;
		  opacity: .80;
		  filter: alpha(opacity=80);
		  margin-left: -25%;
		}
		
		
		.white_content {
		
		  display: none;
		  position: absolute;
		  top: 25%;
		  left: 30%;
		  width: 70%;
		  height: 25%;
		  padding: 16px;
		  background-color: white;
		  z-index: 1002;
		  overflow: auto;
		  border-radius: 8px;
		  text-align:center;
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
		  margin: 60px 40px 10px 0;
		  overflow: visible;
		  padding: 12px 40px;
		  text-align: center;
		  text-transform: none;
		  touch-action: manipulation;
		  user-select: none;
		  -webkit-user-select: none;
		  vertical-align: middle;
		  white-space: nowrap;
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
	

		.delete
		{
		  margin-left: 10%;
		}
		
.profile-dropdown
			{
			  left: 75%;
			  top: 20%;
			  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
			  display: inline-block;
			  position:absolute;
			  background: #f2f2f2;
			  width: 20%;
			  font-weight: bold;
			  font-size: 1.3rem;
			  border-radius: 3px;
			  -webkit-user-select: none;
			  /* Chrome all / Safari all */
			  -moz-user-select: none;
			  /* Firefox all */
			  -ms-user-select: none;
			  /* IE 10+ */
			  user-select: none;
			  /* Likely future */
			}
		
			.profile-dropdown * {
			  -webkit-user-select: none;
			  /* Chrome all / Safari all */
			  -moz-user-select: none;
			  /* Firefox all */
			  -ms-user-select: none;
			  /* IE 10+ */
			  user-select: none;
			  /* Likely future */
			}
			.profile-dropdown input[type=checkbox] {
			  display: none;
			}
			.profile-dropdown input[type=checkbox]:checked ~ ul {
			  display: block;
			  animation: pulse 0.5s;
			}
			.profile-dropdown input[type=checkbox]:checked ~ img {
			  background: orange;
			}
			.profile-dropdown input[type=checkbox]:checked ~ label {
			  background: orange;
			}
			.profile-dropdown input[type=checkbox]:checked ~ label i {
			  color: #f2f2f2;
			}
			.profile-dropdown input[type=checkbox]:checked ~ label:after {
			  content: "";
			  position: absolute;
			  top: 100%;
			  right: calc(50% - 10px);
			  display: block;
			  border-style: solid;
			  border-width: 7px 10px 0 10px;
			  border-color: orange transparent transparent transparent;
			  width: 0;
			  height: 0;
			}
			.profile-dropdown img {
			  display: inline-block;
			  background: #d9d9d9;
			  height: 2.5rem;
			  vertical-align: middle;
			  margin-right: 1rem;
			  margin: 0.5rem 0.75rem 0.5rem 0.5rem;
			  border-radius: 50%;
			}
			.profile-dropdown span {
			  display: inline-block;
			  vertical-align: sub;
			  width: 125px;
			  margin-right: 2rem;
			  overflow: hidden;
			  white-space: nowrap;
			  text-overflow: ellipsis;
			  color: black;
			}
			.profile-dropdown ul {
			  display: none;
			  list-style: none;
			  padding: 0;
			  marrgin: 0;
			  background: #fff;
			  position: absolute;
			  top: 100%;
			  right: 0;
			  width: 100%;
			  border-radius: 3px;
			}
			.profile-dropdown ul li a {
			  display: block;
			  padding: 0.75rem 1rem;
			  text-decoration: none;
			  color: #737373;
			  font-size: 1rem;
			}
			.profile-dropdown ul li a i {
			  font-size: 1.3rem;
			  vertical-align: middle;
			  margin: 0 0.75rem 0 -0.25rem;
			}
			.profile-dropdown ul li a:hover {
			  background: #e5e5e5;
			}
			.profile-dropdown ul li:first-child a:hover {
			  border-radius: 3px 3px 0 0;
			}
			.profile-dropdown ul li:last-child a:hover {
			  border-radius: 0 0 3px 3px;
			}
			/* .profile-dropdown > label {
			  position: relative;
			  height: 3.5rem;
			  display: block;
			  text-decoration: none;
			  background: transparent;
			  color: #333;
			  box-sizing: border-box;
			  padding: 0.9rem;
			  float: right;
			  border-radius: 0 3px 3px 0;
			}
			 */
			.profile-dropdown > label i {
			  color: #000;
			  font-size: 1.75rem;
			}
			
			.profile-dropdown:after {
			  content: "";
			  display: table;
			  clear: both;
			}
			
			h1 {
			  text-align: center;
			  font-size: 3rem;
			  color: rgba(0, 0, 0, 0.5);
			  text-transform: uppercase;
			  margin: 2rem 0 0;
			  letter-spacing: 0.5rem;
			}
			
			.container {
			  width: 80%;
			  margin: 4rem auto 2rem;
			}
			.container .half {
			  width: 50%;
			  float: left;
			  margin-bottom: 2rem;
			}
			.container:after {
			  content: "";
			  display: table;
			  clear: both;
			}

			.delete
			{
			  margin-top: -8%;
			  margin-left: 70%;
			}
			



</style>
</html>