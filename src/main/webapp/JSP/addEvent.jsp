<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
  
    
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/addevent.css">
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
            <img src = "${pageContext.request.contextPath}/Images/logo.png">
            <i class='bx bx-menu' id="btn" ></i>
        </div>
        <ul class="nav-list">
        <li>
            <i class='bx bx-search' ></i>
            <input type="text" placeholder="Search...">
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/JSP/admin_dashboard.jsp" >
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
                <img src = "${pageContext.request.contextPath}/Images/color.png" alt = "">
                <span class="admin_name">Kiriharan Mohan</span>
                <i class='bx bx-chevron-down'></i>
            </div>
        </nav>
         <!-- Home content -->

         <div class="main">  	
            <input type="checkbox" id="chk" aria-hidden="true">
    
             <div class="signup">
               <form action="${pageContext.request.contextPath}/Add" method = "post">
                       
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
                                
                                Invitation Cards  <input type="checkbox" id="s2" name="s1" value="Invitation Card">
                                    
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
        </div>
         



<div class="tbl">
         <h1>
            Events
          </h1>
          <p>
            Detailed view of Events and there Services
          </p>
          
            <table>
              <thead>
                <tr>
                  
                  <th style="text-align:center;">
                    Name
                  </th>
                  <th style="text-align:center;"> 
                    Image
                  </th>
                  <th style="text-align:center;">
                    Services
                  </th>
                  <th style="text-align:center;">
                    Description
                  </th>
                
                  <th style="text-align:center;">
					Action
                  </th>
                </tr>
              </thead>
       
              <tbody>
              
                	
                  <c:forEach var = "ftch" items = "${adfetch}">
                  
                  <tr>
                  <td style="width: 10%; text-align:center;">
                    ${ftch.name }
                  </td>
                  <td style="width: 15%; text-align:center;">
                   .
                  </td>
             
                  <td style="width: 10%; text-align:center;">
                  <br>
                  <br>
                <c:forEach var = "typ" items = "${ftch.typ}">
                
                	 ${typ}  <br> 
                 
                 </c:forEach>
                  </td>
                  
                  <td style="width: 40%; text-align:center; ">
                    ${ftch.desc }
                  </td>
                  
                  <td style="width: 5%;" >
                    <form method = 'post' action ='${pageContext.request.contextPath}/JSP/UpdateEvent.jsp'>
                    <input type="hidden"  name="txt" value="${ftch.name}">
                    <input type="hidden"  name="txtdes" value="${ftch.desc}">
                    <button type ='submit' style="margin-left : 50px; margin-right : 50px;">Update</button>
                     </form>
                    <br>
                    <form method = 'post' action ='${pageContext.request.contextPath}/delete'>
                    <input type="hidden"  name="txt" value="${ftch.name}">
                    <button type ='submit' style="margin-left : 50px; margin-right : 50px;">Delete</button>
                      
                     </form>
                  </td>
                  </tr>
                  
                  </c:forEach>
               
                
                
              </tbody>
            </table>
            
            
</div>

          




   
    </body>

</html>