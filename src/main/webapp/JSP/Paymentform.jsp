<%@ page language="java" session = "true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
     
     <%@ page import="com.customerevent.*"%>
     <%@ page import="java.sql.*"%>
     <%@page import="java.sql.DriverManager"%>
	 <%@page import="java.sql.ResultSet"%>
	 <%@page import="java.sql.Statement"%>
	 <%@page import="java.sql.Connection"%>
	
    <%
    
     String url = "jdbc:mysql://localhost:3306/event_management_system";
	 String user = "root";
	 String pass = "eventmanagement123";
	 
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(Exception e) {
			System.out.println("Database connection unsuccessful!");
		}
		
		
    
     	Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ResultSet rs1 = null;
    
    %>
     
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/dashboard-style.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta charset = "UTF-8">
        <title> Customer Dashboard | Eventrra</title>
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            <a href="#" class = "colored" >
                <i class='bx bxs-dashboard colored'></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bxs-message-square-add'></i>
                <span class="links_name">Schedule Meeting</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-cog' ></i>
                <span class="links_name">Settings</span>
            </a>
        </li>
        </ul>
    </div>

    <!-- --------------------------Main section------------------------------ -->

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

    <!-- ---------------------------Middle content---------------- -->
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
                <span><h5>Hello</h5></span>
                <label style = "width: 15%;" for="profile2"><i class="mdi mdi-menu"></i></label>
                <ul>
                  <li><a href="http://localhost:8080/EventManagementSystem/JSP/VLoginSignup.jsp" onclick="logout()"><i class="mdi mdi-logout"></i>Logout</a></li>
                </ul>
              </label>
            </div>
          </div>
            
            <script>
        	function logout() {
        		var txt;
        		if (confirm("Are you sure you want to log out?")) {
        			txt = "You logged out";
        		}
        	}
        </script>
        </nav>

         <!-- Home content -->
         
     
       
    </section>
    
    		<input type="hidden" id = "cid" name="cid" value = "<%= session.getAttribute("Id") %>" >
          
    		<input type="hidden" id="name" name="name" value= "<%=session.getAttribute("name") %>">
    		<input type="hidden" id="num" name="num" value=  "<%=session.getAttribute("num") %>">
    		<input type="hidden" id="edate" name="edate" value= "<%=session.getAttribute("edate") %>" >
    		<input type="hidden" id="type" name="type" value= "<%=session.getAttribute("type") %>">
    		<input type="hidden" id="price" name="price" value= "<%=session.getAttribute("price") %>">
   
    
    		<input type="hidden" id="paid" name="paid" value="<%=session.getAttribute("paid") %>">
    		
          	
          	<input type="hidden" id="maid" name="maid" value="<%=session.getAttribute("maid") %>">
          
          
          	
          	<input type="hidden" id="daid" name="daid" value="<%=session.getAttribute("daid") %>">
          	
          
          	
            <input type="hidden" id="iaid" name="iaid" value="<%=session.getAttribute("iaid") %>">
            
          
            
          	<input type="hidden" id="faid" name="faid" value= "<%=session.getAttribute("faid") %>">
          	
      
    
        <div class="container1 p-0">
        <div class="card px-4">
            <p class="h8 py-3">Payment Details</p>
            <div class="row gx-3">
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Person Name</p>
                        <input id="one" class="form-control mb-3" type="text" placeholder="Name" value="God Kiriharan" required >
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Card Number</p>
                        <input id="two" class="form-control mb-3" type="text" placeholder="1234 5678 435678" required>
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Expiry</p>
                        <input id="three" class="form-control mb-3" type="text" placeholder="MM/YYYY" required>
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">CVV/CVC</p>
                        <input id="four" class="form-control mb-3 pt-2 " type="password" placeholder="***" required>
                    </div>
                </div>
                <div class="col-12">
                <a href="${pageContext.request.contextPath}/addEvent" style= "text-decoration:none;">
                    <div class="btn btn-primary mb-3">
                        <span class="ps-3">Pay Rs.<%= request.getParameter("price") %></span>
                        <span class="fas fa-arrow-right"></span>
                    </div>
                </a>    
                </div>
            </div>
        </div>
    </div>
    
   
   
    </body>
    
    <style>
			.profile-dropdown
			{
			  left: 75%;
			  top: 15%;
			  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
			  display: inline-block;
			  position:absolute;
			  background: #f2f2f2;
			  width: 20%;
			  margin:auto;
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
			
			@import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');

				* {
				    margin: 0;
				    padding: 0;
				    box-sizing: border-box;
				    font-family: 'Montserrat', sans-serif;
				}
				
				
				.card {
				    max-width: 500px;
				    margin: auto;
				    color: black;
				    border-radius: 20px;
				    padding: 8px;
				}
				
				p {
				    margin: 0px;
				}
				
				.col-12, .col-6
				{
				   padding: 6px;
				}
				
				.container1 {
				   margin-top: 5%;
				   background: #fff;
				   width: 35%;
				   margin-left: 33%;
				   height: 200%;
				   border-radius: 8px;
				}
				
				
				.container1 .h8 {
				    font-size: 30px;
				    font-weight: 800;
				    text-align: center;
				}
				
				.btn.btn-primary {
				    width: 100%;
				    height: 70px;
				    display: flex;
				    align-items: center;
				    justify-content: space-between;
				    padding: 0 15px;
				    background-image: linear-gradient(to right, #77A1D3 0%, #79CBCA 51%, #77A1D3 100%);
				    border: none;
				    transition: 0.5s;
				    background-size: 200% auto;
				
				}
				
				
				.btn.btn.btn-primary:hover {
				    background-position: right center;
				    color: #fff;
				    text-decoration: none;
				}
				
				
				
				.btn.btn-primary:hover .fas.fa-arrow-right {
				    transform: translate(15px);
				    transition: transform 0.2s ease-in;
				}
				
				.form-control {
				    color: white;
				    background-color: #223C60;
				    border: 2px solid transparent;
				    height: 60px;
				    padding-left: 20px;
				    vertical-align: middle;
				    width: 100%;
				}
				
				.form-control:focus {
				    color: white;
				    background-color: #0C4160;
				    border: 2px solid #2d4dda;
				    box-shadow: none;
				}
				
				.text {
				    font-size: 14px;
				    font-weight: 600;
				}
				
				::placeholder {
				    font-size: 14px;
				    font-weight: 600;
				}


    
    </style>
</html>