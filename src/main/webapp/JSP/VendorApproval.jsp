<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/approve.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta charset = "UTF-8">
        <title> Admin Dashboard | Eventrra</title>
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link href = "https://cdn.jsdelivr.net/npm/@mdi/font@6.9.96/css/materialdesignicons.min.css" rel = "stylesheet">
         
         <style>
         
         	 
  
				.profile-dropdown
							{
							  left: 75%;
							  top: 1%;
							  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
							  display: inline-block;
							  position:absolute;
							  background: #f2f2f2;
							  height: 5%;
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
							  margin: 0;
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
							  position: absolute;
							  margin-left: 120%;
							  font-size: 1.75rem;
							  margin-top: -37%;
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
				
				
				    


         	
         </style>
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
            <a href="http://localhost:8080/EventManagementSystem/CountCustomerServelet" >
                <i class='bx bxs-dashboard '></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/JSP/addEvent.jsp" >
                <i class='bx bxs-message-square-add'></i>
                <span class="links_name">Create Event</span>
            </a>
        </li>
        <li>
            <a href="http://localhost:8080/EventManagementSystem/FeedbackServelet">
                <i class='bx bx-star'></i>
                <span class="links_name">Reviews</span>
            </a>
        </li>
        <li>
            <a href="#" class = "colored" >
                <i class='bx bxs-user colored'></i>
                <span class="links_name">Vendors</span>
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
                  
                  
                  <li><a href="#"><i class="mdi mdi-logout"></i>Logout</a></li>
                </ul>
              </label>
            </div>
          </div>
        </nav>
         <!-- Home content -->

       <div class="main">
       
                       
            <label for="chk" aria-hidden="true">Approve Vendor</label>

 <c:forEach var = "approve" items = "${approve}">
           <div class="card">
                <!-- <img src="/w3images/team2.jpg" alt="John" style="width:100%"> -->
                <h1>${approve.title}</h1>
                <p class="title">${approve.price}</p>
                <p>${approve.desc}</p>
                <div style="margin: 24px 0;">
                  <a href="#"><i class="fa fa-dribbble"></i></a> 
                  <a href="#"><i class="fa fa-twitter"></i></a>  
                  <a href="#"><i class="fa fa-linkedin"></i></a>  
                  <a href="#"><i class="fa fa-facebook"></i></a> 
                </div>
               <form method = 'post' action ='${pageContext.request.contextPath}/Approve'> 
                <input type="hidden"  name="txt" value="${approve.getAddID()}"> 
                <p><button type = "submit" style="margin-bottom:0.5%;">Approve</button></p>
                </form>
                <form method = 'post' action ='${pageContext.request.contextPath}/reject'> 
                <input type="hidden"  name="txt" value="${approve.getAddID()}"> 
                 <p><button type = "submit">Delete</button></p>
                 </form>
              </div> 
              
           

 </c:forEach>          



       </div>

          
    </section>



   
    </body>

</html>