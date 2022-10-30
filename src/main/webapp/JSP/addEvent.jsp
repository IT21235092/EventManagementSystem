<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../CSS/addevent.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta charset = "UTF-8">
        <title> Admin Dashboard | Eventrra</title>
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>
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
            <a href="#" >
                <i class='bx bxs-dashboard '></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="#" class = "colored" >
                <i class='bx bxs-message-square-add colored'></i>
                <span class="links_name">Create Event</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-star'></i>
                <span class="links_name">Reviews</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bxs-user'></i>
                <span class="links_name">Vendors</span>
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

         <!-- Home content -->

         <div class="main">  	
            <input type="checkbox" id="chk" aria-hidden="true">
    
                <div class="signup">
                    <form action="../Add" method = "post" enctype = "multipart/form-data">
                       
                        <label for="chk" aria-hidden="true">Add Event</label>
                        <div class="label1">
                            <label>Enter Category Name</label>
                            </div>
                        <input type="text" id="in1" name="txt" placeholder="Enter Category name" required="">
                        <div class="label2">
                            <label>Enter Image</label>
                            </div>
                        <input type="file" id="in1" accept="image/png, image/jpeg, image/jpg" name="event_image" class="box">
                        <div class="label3">
                            <label>Enter Service types</label>
                            </div>
                            <div class="label4" >
                                
                                Music  <input type="checkbox" id="s1" name="s1" value="Music">
                                
                                </div>
                               
                        
                        <div class="label5" >
                                
                            Food and Drinks  <input type="checkbox" id="s2" name="s1" value="Food and Drinks">
                            
                            </div>
    
                            <div class="label5" >
                                
                                Photos  <input type="checkbox" id="s2" name="s1" value="Photos">
                                
                                </div>
    
                                <div class="label5" >
                                
                                    Invitation Cards  <input type="checkbox" id="s2" name="s1" value="Invitation Cards">
                                    
                                    </div>
    
                                    <div class="label5" >
                                
                                        Decoration  <input type="checkbox" id="s2" name="s1" value="Decoration">
                                        
                                        </div>
    
                                        <div class="label6">
                                            <label>Enter Event description</label>
                                            </div>
                       <textarea id="txta" name="txtarea" rows="4" cols="50"></textarea>
    
                       
                        
                        <button type="submit">Add Event</button>
                    </form>
                </div>

   
    </body>

</html>