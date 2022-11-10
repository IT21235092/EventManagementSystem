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
    <title> Customer Settings | Eventrra</title>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
	<link href = "https://cdn.jsdelivr.net/npm/@mdi/font@6.9.96/css/materialdesignicons.min.css" rel = "stylesheet">
</head>

   <style>
    
    	.dropdown-content
    	{
			  display: none;
			  position: absolute;
			  background-color: #000;
			  min-width: 180px;
			  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
			  z-index: 1;
			  margin-right: 10%;
			  
		}

		.dropdown-content a 
		{
		  color: white;
		  padding: 12px 16px;
		  text-decoration: none;
		  display: block;
		}

		.dropdown-content a:hover 
		{
			background-color: #000;
		}
		
		 .dropdown:hover .dropdown-content
		{
		 	display: block;
		}
		
	
    
    </style>
<body>
    <div class="sidebar">
        <div class="logo-details">
        <!-- ***************LOGO************* -->
            <img src = "${pageContext.request.contextPath}/Images/logo.png">
            <i class='bx bx-menu' id="btn" ></i>
        </div>
        <ul class="nav-list">
       
        <li>
            <a href="${pageContext.request.contextPath}/JSP/Cust_dashboard.jsp" >
                <i class='bx bxs-dashboard'></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/getFeedback">
                <i class='bx bxs-edit'></i>
                <span class="links_name">Feedback</span>
            </a>
        </li>
        <li>
            <a href="" class = "colored" >
                <i class='bx bx-cog  colored' ></i>
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
                  <li><a href="#"><i class="mdi mdi-logout"></i>Logout</a></li>
                </ul>
              </label>
            </div>
          </div>
    </nav>
    
<c:forEach var = "cus" items = "${cusDetails}">

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
            <form action = "http://localhost:8080/EventManagementSystem/Settings1" method = "post">
                <div class="row mt-5 align-items-center">
                    <div class="col-md-3 text-center mb-5">
                        <div class="avatar avatar-xl">
                            <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="..." class="avatar-img rounded-circle" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="row align-items-center">
                            <div class="col-md-7">
                                <h4 class="mb-1">${cus.firstName} ${cus.lastName}</h4>
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
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="firstname">FirstName</label>
                        <input type="text" id="firstname" name = "firstname" value = '${cus.firstName}' class="form-control"/>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="lastname">LastName</label>
                        <input type="text" id="lastname" name = "lastname" value = '${cus.lastName}' class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name = "username" value = '${cus.username}' id="username"/>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name = "email" value = '${cus.email}' id="email"/>
                </div>
                <div class="form-group">
                    <label for="phone">Contact Number</label>
                    <input type="text" class="form-control" name = "phone" value = '${cus.phone }' id="phone"/>
                </div>
                
              
                <hr class="my-4" />
                <div class="row mb-4">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputPassword4">Old Password</label>
                            <input type="password" class="form-control" name = "inputPassword4" value = '${cus.password}' id="inputPassword5" />
                        </div>
                        <div class="form-group">
                            <label for="inputPassword5">New Password</label>
                            <input type="password" class="form-control" name = "inputPassword5" id="inputPassword5" />
                        </div>
                        <div class="form-group">
                            <label for="inputPassword6">Confirm Password</label>
                            <input type="password" class="form-control"  name = "inputPassword6" id="inputPassword6" />
                        </div>
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
                <button type="submit" class="btn btn-primary delete">Delete Account</button>
            </form>
            	
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

.profile-dropdown
			{
			  left: 75%;
			  top: 1%;
			  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
			  display: inline-block;
			  position:absolute;
			  background: #f2f2f2;
			  width: 22%;
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