<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
  
     
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Feedback.css">
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
            <a href="${pageContext.request.contextPath}/JSP/Cust_dashboard.jsp"  >
                <i class='bx bxs-dashboard '></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/getFeedback" class="colored">
                <i class='bx bxs-edit colored'></i>
                <span class="links_name">Feedback</span>
            </a>
        </li>
        <li>
            <a href="http://localhost:8080/EventManagementSystem/InitialSettings1">
                <i class='bx bx-cog' ></i>
                <span class="links_name">Settings</span>
            </a>
        </li>
        </ul>
    </div>

    <!-- --------------------------Main section------------------------------ -->
    
    <% String message = (String)request.getAttribute("alertMsg");
    	if(message != null){%>
    		<script type="text/javascript">
    		var msg = "<%=message%>";
    		alert(msg);
			</script>
    	<% }
    
    
    %>

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

        <div class="home-content">
            <!-- event-content -->
            <div class="event-boxes">
                <div class="recent-sale box">
                    <div class = "title">Your Feedback</div>
                    <div style ="size:1px; color:red; text-align:center;"><i>*Note: You cannot add a new feedback until pending event is completed.</i></div>
                    <br><br>
                    
                    
                    <table>
                    
                    <tr>
                    
                    <th style="width:500px;">Feedback</th>
                    <th style="width:100px;">Rating</th>
                    <th style="width:300px;width:100px;;"></th>
                    <th style="width:300px;width:100px;"></th>
                    
                    
                    </tr>
                    
         
        			<c:forEach var="fee" items="${fDetails}">
        			
        			<c:set var="description" value="${fee.description}"/>
        			<c:set var="fid" value="${fee.fid}"/>
        			<c:set var="rating" value="${fee.rating}"/>
        			
        			<c:url value="JSP/UpdateFeedback.jsp" var="fupdate">
                    <c:param name="fid" value="${fid}"/>
                    <c:param name="description" value="${description}"/>
                    <c:param name="rating" value="${rating}"/>
                    </c:url>
        			
        			<tr>
        			
        			<td>${fee.description}</td>
        			
        			<td style="text-align:center;">${fee.rating}</td>
        			
        			<td style="text-align:center;">
        			<a href="${fupdate}">
        			<button>Edit</button>
        			</a>
        			</td>
        			
        			<td style="text-align:center;">
        			<form method="get" action="${pageContext.request.contextPath}/deleteFeedback">
        			<input type="hidden"  id = "fid" name="fid" value="${fee.fid}">
        			<button type="submit">Delete</button>
        			</form>
        			</td>
        			
        			</tr>
                    </c:forEach>
        			
        			
       
                    
                    
                    </table>
                    
                    
                    
                </div>
                <!-- right-side -->
                
            
        </div>
        </div>
    </section>
   
   <a href="${pageContext.request.contextPath}/checkFeedback"><input type="button" value="Add Feedback"></a>
    </body>

</html>