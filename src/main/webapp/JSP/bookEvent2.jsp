<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            <div class="profile-details">
                <img src = "${pageContext.request.contextPath}/Images/color.png" alt = "">
                <span class="admin_name">Kiriharan Mohan</span>
                <i class='bx bx-chevron-down'></i>
            </div>
        </nav>

         <!-- Home content -->
               <div class="row">
    <div class="col-md-12">
      <form action="#" method="post">
        <h1> Book Event </h1>
        
        <!-- <fieldset>
          
          <legend><span class="number">1</span> Event details</legend>
          
          <label for="type">Select Event type:</label>
  		  <select name="type" id="type" class="txt" required>
    		<option value="wedding">Wedding</option>
    		<option value="birthday">Birthday Party</option>
   			<option value="concert">Concert</option>
  		  </select>
        
          <label for="name">Event Name:</label>
          <input type="text" id="name" name="event_name" class="txt" required>
        
          <label for="number">Number of Guests:</label>
          <input type="number" id="num" name="num" required min="30" max="400">
       
          <label for="date">Event Date:</label>
          <input type="date" id="edate" name="edate" required>
        <br>
          
          
        </fieldset> -->
        <fieldset>  
        
          <legend><span class="number">2</span> Event Services</legend>
          
          <label><b>Fixed services:</b></label>
          <ul>
          	<li>Venue</li>
          	<li>Sound and Lighting</li>
          	
          </ul>
          
          <br>
          
          <label><b>Select additional services:</b></label>
          <ul>
          	<li>Food and Drinks
          		<a href="#" class="button">
          		<button id="vbtn">--Select Vendor--</button>
          		</a>
          	</li>
          		<li>Music
          		<a href="#" class="button">
          		<button id="vbtn">--Select Vendor--</button>
          		</a>
          	</li>
          		<li>Photos
          		<a href="#" class="button">
          		<button id="vbtn">--Select Vendor--</button>
          		</a>
          	</li>
          </ul>
          
          
          
          
         </fieldset> 
       
        <a href="" class="button">
        <button type="submit">Next</button>
        </a>
        
       </form>
        </div>
      </div>
      
         

     
    </section>
   
   
    </body>