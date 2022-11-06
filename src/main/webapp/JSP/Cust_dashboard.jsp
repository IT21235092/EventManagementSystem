<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			  margin-left: -10%;
			  
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
            <a href="http://localhost:8080/EventManagementSystem/InitialSettings">
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
            <div class="profile-details">
                <img src = "${pageContext.request.contextPath}/Images/default-img.jpg" alt = "">
                <span class="admin_name">${username}</span>
                 <div class = "dropdown">
                	<i class='bx bx-chevron-down dropdown'></i>
		                 <div class="dropdown-content">
							    <a href="#">Log out</a>
		  				</div>
                </div>
            </div>
        </nav>

         <!-- Home content -->

        <div class="home-content">
            <!-- event-content -->
            <div class="event-boxes">
                <div class="recent-sale box">
                    <div class = "title">Pending Event</div>
                </div>
                <!-- right-side -->
                <div class="top-vendor box">
                    <div class = "title">Event History</div>
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
        <button class="addEvent">Add Event</button>
    </section>
   
   
    </body>

</html>