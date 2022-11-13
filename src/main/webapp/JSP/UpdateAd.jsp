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

    <body style = "background-image: url('../Images/back.jpeg');">
    
    <%
 		String adid = request.getParameter("adId");
 		String vid = request.getParameter("Vendor_ID");
 		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String desc = request.getParameter("desc");
		String atta = request.getParameter("attach");
	%>
	
	<%= vid %>
	
    <div class="sidebar">
        <div class="logo-details">
        <!-- ***************LOGO************* -->
            <img src = "../Images/logo.png">
            <i class='bx bx-menu' id="btn" ></i>
        </div>
        <ul class="nav-list">
        
        <li>
            <a href="${pageContext.request.contextPath}/JSP/Vendor_dashboard.jsp">
                <i class='bx bxs-dashboard'></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="http://localhost:8080/EventManagementSystem/showAdServlet" class='colored'>             
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
            <div class="profile-details">
                <img src = "../Images/color.png" alt = "">
                <span class="admin_name">Kiriharan Mohan</span>
                <i class='bx bx-chevron-down'></i>
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
        </section>
        
    <!-- -----------------------------------Content-------------------------------------------- -->
    
     <div class="container">
    <div class="title">Edit Advertisement</div>
    <div class="content">
      <form action= "http://localhost:8080/EventManagementSystem/updatead" method="post">
        <div class="ad-details">
        <div class="input-box">
            <span class="details">Advertisement Title</span>
            <input type="text" name="title" placeholder="Enter the title of your ad" required value="<%= title%>">
          </div>
            <div class="input-box">
            <span class="details">Price</span>
            <input type="text" placeholder="Price of the service" name="price" required value="<%= price%>">
          </div>
          <div class="input-box">
            <span class="details">Description</span>
            <textarea placeholder="Product details" name="desc" required><%= desc%></textarea>
          </div>
        
          <div class="input-box">
            <span class="details">Attachments:</span>
            <input type="file" name="attach" value="<%= atta %>">
          </div>
        </div>
        
        <input type="text" name="adid" value="<%=adid%>" style="display: none;">
        <input type="text" name="vid" value="<%=vid %>" style="display: none;">
        
        <div class="button">
          <input type="submit" value="Submit">
        </div>
      </form>
    </div>
  </div>
  
    </body>
    
    </html>