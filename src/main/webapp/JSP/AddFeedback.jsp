<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/bookevent.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta charset = "UTF-8">
        <title> Customer Dashboard | Eventrra</title>
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            <i class='bx bx-search' ></i>
            <input type="text" placeholder="Search...">
        </li>
        <li>
            <a href="#"  >
                <i class='bx bxs-dashboard '></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="Cust_Feedback.jsp" class="colored">
                <i class='bx bxs-edit colored'></i>
                <span class="links_name">Feedback</span>
            </a>
        </li>
        <li>
            <a href="Cust_Settings.jsp">
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
                <i class='bx bx-chevron-down'></i>
            </div>
        </nav>

        <!-- Home content -->
               <div class="row">
    <div class="col-md-12">
      <form action="../addFeedback" method="post" >
        <h1> Give us your Feedback! </h1>
        
        <fieldset>
         
        
          <label for="feedback">Your Feedback:</label>
          <textarea id="feedback" name="feedback" placeholder="We would love to hear your thoughts, suggestions, concerns or problems with anything so we can improve" style="resize:none" maxlength="150" required></textarea>
        
          <label for="rating">Rate our Service:</label>
          <input type="number" id="rating" name="rating" required min="1" max="5" >
          
          <label for="img">Upload Image:</label>
          <input type="file" id="img" name="img" accept="image/*">
          
          
          
          
          
        <br>
          
          
        </fieldset>
     
        
        <button type="submit">Submit</button>
        
        
       </form>
        </div>
      </div>
        
    </section>
   
   
    </body>

</html>