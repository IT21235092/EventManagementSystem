<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../CSS/dashboard-style.css">
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
            <a href="#" class = "colored" >
                <i class='bx bxs-dashboard colored'></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bxs-message-square-add'></i>
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
            <a href="Admin_Settings.jsp">
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

        <div class="home-content">
            <div class="overview-boxes">
                <div class="box">
                    <div class="left-side">
                        <div class="box-topic">Total Customers</div>
                        <div class="number">40876</div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt' ></i>
                            <span class="text">Up from Yestersday</span>
                        </div>
                    </div>
                    <i class="fa fa-users cust" aria-hidden="true"></i>
                </div>
                <div class="box">
                    <div class="left-side">
                        <div class="box-topic">Events Pending</div>
                        <div class="number">1000</div>
                        <div class="indicator">
                            <i class='bx bx-up-arrow-alt' ></i>
                            <span class="text">Up from Yestersday</span>
                        </div>
                    </div>
                    <i class='bx bx-time cust pend'></i>
                </div>
                <div class="box">
                    <div class="left-side">
                        <div class="box-topic">Events Completed</div>
                        <div class="number">1000</div>
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
                        <div class="number">1000</div>
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
                    <div class = "title">Recent Events</div>
                    <div class="event-details">
                        <ul class="details">
                            <li class = "topic">Date</li>
                            <li><a href = "">02 Jan 2021</a></li>
                            <li><a href = "">02 Jan 2021</a></li>
                            <li><a href = "">02 Jan 2021</a></li>
                            <li><a href = "">02 Jan 2021</a></li>
                            <li><a href = "">02 Jan 2021</a></li>
                            <li><a href = "">02 Jan 2021</a></li>
                        </ul>
                        <ul class="details">
                            <li class = "topic">Customer</li>
                            <li><a href = "">Alex Doe</a></li>
                            <li><a href = "">David Mart</a></li>
                            <li><a href = "">Roe Parter</a></li>
                            <li><a href = "">Diana Penty</a></li>
                            <li><a href = "">Martin Paw</a></li>
                            <li><a href = "">Doe Alex</a></li>
                        </ul>
                        <ul class="details">
                            <li class = "topic">Status</li>
                            <li><a href = "">Over</a></li>
                            <li><a href = "">Pending</a></li>
                            <li><a href = "">Over</a></li>
                            <li><a href = "">Pending</a></li>
                            <li><a href = "">Over</a></li>
                            <li><a href = "">Pending</a></li>
                        </ul>
                        <ul class="details">
                            <li class = "topic">Sales</li>
                            <li><a href = "">$450</a></li>
                            <li><a href = "">$450</a></li>
                            <li><a href = "">$450</a></li>
                            <li><a href = "">$450</a></li>
                            <li><a href = "">$450</a></li>
                            <li><a href = "">$450</a></li>
                        </ul>
                    </div>
                </div>
                <!-- right-side -->
                <div class="top-vendor box">
                    <div class = "title">Top Vendors</div>
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

</html>