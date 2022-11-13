<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/dashboard-style.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta charset = "UTF-8">
        <title> Vendor Dashboard | Eventrra</title>
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
            <a href="http://localhost:8080/EventManagementSystem/JSP/Vendor_dashboard.jsp" class = "colored" >
                <i class='bx bxs-dashboard colored'></i>
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
            <a href="http://localhost:8080/EventManagementSystem/InitialSettings2">
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

         <!-- Home content -->

		<div class="addbutton">
			<button class="button-86" role="button"><a href="http://localhost:8080/EventManagementSystem/JSP/Advertisement.jsp">Add Advertisement </a></button>
		</div>
        <div class="home-content">
        
            <div class="overview-boxes">
            
                <div class="box">
                
                    <div class="left-side">
                        <div class="box-topic">Total Customers</div>
                        <div class="number"><%out.println(request.getAttribute("countCus")); %></div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt' ></i>
                            <span class="text">Up from Yestersday</span>
                        </div>
                    </div>
                    <i class="fa fa-users cust" aria-hidden="true"></i>
                </div>
                <div class="box">
                    <div class="left-side">
                        <div class="box-topic">Orders Pending</div>
                        <div class="number"><%out.println(request.getAttribute("countEvent1"));%></div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt' ></i>
                            <span class="text">Up from Yestersday</span>
                        </div>
                    </div>
                    <i class='bx bx-time cust pend'></i>
                </div>
                <div class="box">
                    <div class="left-side">
                        <div class="box-topic">Orders Completed</div>
                        <div class="number"><%out.println(request.getAttribute("countEvent2"));%></div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt' ></i>
                            <span class="text">Up from Yestersday</span>
                        </div>
                    </div>
                    <i class="fa fa-thumbs-up cust over " aria-hidden="true"></i>
                </div>
                <div class="box">
                    <div class="left-side">
                        <div class="box-topic">Total Profit</div>
                        <div class="number"><%out.println(request.getAttribute("profit"));%></div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt' ></i>
                            <span class="text">Up from Yestersday</span>
                        </div>
                    </div>
                    <i class='bx bx-dollar cust dollar' ></i>
                </div>
            </div>

            <!-- event-content -->
            <div class="event-boxes">
                <div class="recent-sale box">
                    <div class = "title">Recent Orders</div>
                    <div class="event-details">
                        <ul class="details">
                            <li class = "topic">Date</li>
                            <c:forEach var = "data" items = "${Statistics}">
                            <li><a href = "">${data.getEvent_Date()}</a></li>
                            </c:forEach>
                        </ul>
                        <ul class="details">
                            <li class = "topic">Customer</li>
                             <c:forEach var = "data" items = "${Statistics}">
                            <li><a href = "">${data.getName()}</a></li>
                            </c:forEach>
                        </ul>
                        <ul class="details">
                            <li class = "topic">Status</li>
                             <c:forEach var = "data" items = "${Statistics}">
                            <li><a href = "">${data.isStatus()}</a></li>
                            </c:forEach>
                        </ul>
                        <ul class="details">
                            <li class = "topic">Sales</li>
                               <c:forEach var = "data" items = "${Statistics}">
                            <li><a href = "">$${data.getTotPrice()}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <!-- right-side -->
                <div class="top-vendor box">
                    <div class = "title">Top Customers</div>
                    <ul>
                        <li>
                            <a href = "#">
                              <img src = "../Images/color.png" alt = "">
                              <span class="product-name">Gucci Women's Bag</span>
                            </a>
                            <span class="price">$14.66</span>
                        </li>
                    </ul>
                </div>
            </div>
            </div>
            

    </section>

   
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
		
	.profile-dropdown * 
	{
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
	
	.addbutton {
		margin-top: 10px;
	}
	
	.addbutton a{
		text-decoration: none;
		color: white;
	}

/* CSS */
.button-86 {
  all: unset;
  width: 140px;
  height: 30px;
  font-size: 16px;
  background: transparent;
  border: none;
  position: relative;
  color: #f0f0f0;
  cursor: pointer;
  z-index: 1;
  padding: 10px 20px;
  display: flex;
  align-items: center;
  justify-content: center;
  white-space: nowrap;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  left:5%;
}

.button-86::after,
.button-86::before {
  content: '';
  position: absolute;
  bottom: 0;
  right: 0;
  z-index: -99999;
  transition: all .4s;
}

.button-86::before {
  transform: translate(0%, 0%);
  width: 100%;
  height: 100%;
  background: #28282d;
  border-radius: 10px;
}

.button-86::after {
  transform: translate(10px, 10px);
  width: 35px;
  height: 35px;
  background: #ffffff15;
  backdrop-filter: blur(5px);
  -webkit-backdrop-filter: blur(5px);
  border-radius: 50px;
}

.button-86:hover::before {
  transform: translate(5%, 20%);
  width: 110%;
  height: 110%;
}

.button-86:hover::after {
  border-radius: 10px;
  transform: translate(0, 0);
  width: 100%;
  height: 100%;
}

.button-86:active::after {
  transition: 0s;
  transform: translate(0, 5%);
}




</style>

</html>