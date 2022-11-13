<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page import="com.customerevent.*"%>
     <%@ page import="java.sql.*"%>
     <%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
    
    
     <%
    
     String url = "jdbc:mysql://localhost:3306/event_management_system";
	 String user = "root";
	 String pass = "eventmanagement123";
	 
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(Exception e) {
			System.out.println("Database connection unsuccessful!");
		}
		
		
    
     	Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
    
    %>
   
	
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
        <link href = "https://cdn.jsdelivr.net/npm/@mdi/font@6.9.96/css/materialdesignicons.min.css" rel = "stylesheet">
    </head>

    <body>
    <body onload="document.frm.reset();">
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
            <div class="container">
            <div class="half">
              <label for="profile2" class="profile-dropdown">
                <input type="checkbox" id="profile2">
                <img src="https://cdn0.iconfinder.com/data/icons/avatars-3/512/avatar_hipster_guy-512.png">
                <span><h6><% out.println(session.getAttribute("username").toString()); %></h6></span>
                <label style = "width: 15%;" for="profile2"><i class="mdi mdi-menu"></i></label>
                <ul>
                  
                  
                  <li><a href="http://localhost:8080/EventManagementSystem/JSP/VLoginSignup.jsp" onclick="logout()"><i class="mdi mdi-logout"></i>Logout</a></li>
                </ul>
              </label>
            </div>
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

         <!-- Home content -->
               <div class="row">
    <div class="col-md-12">
      <form action="${pageContext.request.contextPath}/eventvenInsert" method="post" name="frm">
        <h1> Book Event </h1>
        <fieldset>  
        
          <legend><span class="number">2</span> Event Services</legend>
          
          <label><b>Fixed services:</b></label>
          <ul>
          	<li>Venue - Rs. 55000</li>
          	<li>Sound and Lighting - Rs. 30000</li>
          	
          </ul>
          
          <br>
          
          <label><b>Select additional services:</b></label>
          
          <c:forEach var="ser" items="${serDetails}">
          
          <ul>
          	<li> ${ser.key} <br>
          	<a href="${pageContext.request.contextPath}/JSP/${ser.key}.jsp?service=${ser.key}" class="button">
          	<input id="type" value="${ser.value}" type="button" >
          	<input type="hidden" id="ad">
          	<input type="hidden" id="ven">
          
          	
          	
          	<% 
          		try{
        	 		con = DriverManager.getConnection(url, user, pass);
        	 	 	stmt = con.createStatement();
        	  
        	  		String sql = "select Event_ID from event where cust_ID = '"+session.getAttribute("Id")+"' ORDER BY Event_ID DESC LIMIT 1 ";
        			rs = stmt.executeQuery(sql);
        			
        			while(rs.next()){%>
        			<input type="hidden" id="eid" value="<%= rs.getInt("Event_ID")%>">
        			
        			<% session.setAttribute("eid",rs.getInt("Event_ID") ); %>

        			
        			
        			
        			
        				
        			<%}
          		}
          	 catch(Exception e){
          		 e.printStackTrace();
          	 }
        		
        		
        	%>
          	
          	
          </a>
          		
          </li>
          </ul>
          
         
          
          
          </c:forEach>
          
          
          	<input type="hidden" id="paid" name="paid" value="<%= session.getAttribute("paid") %>">
          	
          	
          	<input type="hidden" id="maid" name="maid" value="<%= session.getAttribute("maid") %>">
          
          	
          	<input type="hidden" id="daid" name="daid" value="<%= session.getAttribute("daid") %>">
          
          	
            <input type="hidden" id="iaid" name="iaid" value="<%= session.getAttribute("iaid") %>">
          
            
          	<input type="hidden" id="faid" name="faid" value="<%= session.getAttribute("faid") %>">
      
         	<% 
         	
         	int tot = 85000;
         	
         
         	
        	
         	
         	
         	out.print("Total Price: Rs. " +tot+ "/=");
         	%>
          
          
         </fieldset> 
       
        <a href="" class="button">
        <button type="submit">Next</button>
        </a>
        
       </form>
        </div>
      </div>
      
         

     
    </section>
   
   
    </body>