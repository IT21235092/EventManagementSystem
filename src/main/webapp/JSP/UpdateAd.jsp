<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../CSS/Advertisement.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta charset = "UTF-8">
        <title> Vendor Dashboard | Eventrra</title>
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>
    
    <%
		/*int adid = Integer.parseInt(request.getParameter("aid"));
		int vid = Integer.parseInt(request.getParameter("vid"));
		float price = Float.parseFloat(request.getParameter("price"));
		String desc = request.getParameter("des");
		String atta = request.getParameter("attach");*/
	%>
	
	
    <div class="sidebar">
        <div class="logo-details">
        <!-- ***************LOGO************* -->
            <img src = "../Images/logo.png">
            <i class='bx bx-menu' id="btn" ></i>
        </div>
        <ul class="nav-list">
        <li>
            <i class='bx bx-search' ></i>
            <input type="text" placeholder="Search...">
        </li>
        <li>
            <a href="#" class = "colored" >
                <i class='bx bxs-dashboard colored'></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bxs-message-square-add'></i>
                <span class="links_name">Services</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-message-dots' ></i>
                <span class="links_name">ChatBox</span>
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
            <div class="profile-details">
                <img src = "../Images/color.png" alt = "">
                <span class="admin_name">Kiriharan Mohan</span>
                <i class='bx bx-chevron-down'></i>
            </div>
        </nav>
        
        </section>
        
    <!-- -----------------------------------Content-------------------------------------------- -->
    
     <div class="container">
    <div class="title">Create an Advertisement</div>
    <div class="content">
      <form action= "../ad" method="post">
        <div class="ad-details">
        <div class="input-box">
             <span class="details">Ad ID</span>
            <input type="text" name="adid" value="<%= adid %>" readonly>
          </div>
          <div class="input-box">
             <span class="details">Vendor ID</span>
            <input type="text" name="vid" value="<%= vid %>" readonly>
          </div>
            <div class="input-box">
            <span class="details">Price</span>
            <input type="text" placeholder="Price of the service" name="price" required value="<%= price%>">
          </div>
          <div class="input-box">
            <span class="details">Description</span>
            <textarea placeholder="Product details" name="desc" required value= "<%= desc%>"></textarea>
          </div>
        
          <div class="input-box">
            <span class="details">Attachments:</span>
            <input type="file" name="attach" value="<%= atta %>">
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Submit">
        </div>
      </form>
    </div>
  </div>
  
    </body>
    
    </html>