<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page import="com.customerevent.*"%>
     <%@ page import="java.sql.*"%>
     <%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%@page import= "javax.servlet.*"  %>
	<%@page import ="javax.servlet.http.*"  %>
	<%@page import = "java.io.*" %>
    
    
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
    <div class="col-md-12" >
      <form action="${pageContext.request.contextPath}/session2" method="post" name="frm">
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
          	<a href="${pageContext.request.contextPath}/JSP/${ser.key}.jsp" class="button">
          	<input id="type" value="${ser.value}" type="button" >
          	<input type="hidden" id="ad">
          	<input type="hidden" id="ven">
          	
          </a>
          		
          </li>
          </ul>
          
         
          
          
          </c:forEach>
          	 <br>  <br> <br> 
          	<input type="hidden" id = "cid" name="cid" value = "<%= session.getAttribute("Id") %>" >
          
    		<input type="hidden" id="name" name="name" value= ${name}>
    		<input type="hidden" id="num" name="num" value=  ${num}>
    		<input type="hidden" id="edate" name="edate" value= ${edate} >
    		<input type="hidden" id="type" name="type" value= ${type}>
          
         
          	<input type="hidden" id="paid" name="paid" value="<%= session.getAttribute("paid") %>">
          	<input type="hidden" id="pp" name="pp" value="<%= session.getAttribute("pp") %>">
          	
          	
          	<input type="hidden" id="maid" name="maid" value="<%= session.getAttribute("maid") %>">
          	<input type="hidden" id="mp" name="mp" value="<%= session.getAttribute("mp") %>">
          
          	
          	<input type="hidden" id="daid" name="daid" value="<%= session.getAttribute("daid") %>">
          	<input type="hidden" id="dp" name="dp" value="<%= session.getAttribute("dp") %>">
          
          	
            <input type="hidden" id="iaid" name="iaid" value="<%= session.getAttribute("iaid") %>">
            <input type="hidden" id="ip" name="ip" value="<%= session.getAttribute("ip") %>">
          
            
          	<input type="hidden" id="faid" name="faid" value="<%= session.getAttribute("faid") %>">
          	<input type="hidden" id="fp" name="fp" value="<%= session.getAttribute("fp") %>">
      
         	<% 
         	
         	Double tot = 85000.0;
         	
         	
         	
         	try{
         		if( session.getAttribute("pp").toString() != null){
             		
         			String pp = session.getAttribute("pp").toString();
         			Double pprice = Double.parseDouble(pp);
     
             		tot = tot + pprice;
             	}
         	}catch(Exception e){
         	}
         	
         	try{
				if( session.getAttribute("mp").toString() != null){
             		
					String mp = session.getAttribute("mp").toString();
         			Double mprice = Double.parseDouble(mp);
             		
             		tot = tot + mprice;
             	}
         	}catch(Exception e){
         	}
         	
         	try{
				if( session.getAttribute("dp").toString() != null){
             		
					String dp = session.getAttribute("dp").toString();
         			Double dprice = Double.parseDouble(dp);
             		
             		tot = tot + dprice;
             	}
         	}catch(Exception e){
         	}
         	
         	try{
				if( session.getAttribute("ip").toString() != null){
             		
		         	String ip = session.getAttribute("ip").toString();
         			Double iprice = Double.parseDouble(ip);
             		
             		tot = tot + iprice;
             	}
         	}catch(Exception e){
         	}
         	
         	try{
				if(session.getAttribute("fp").toString() != null){
					
					String fp = session.getAttribute("fp").toString();
         			Double fprice = Double.parseDouble(fp);
             		
             		tot = tot + fprice;
             	}	
         	}catch(Exception e){
         	}
         	
         	
        	
         	
         	%>
         	<div class="buttons">
         	<p class="btn-hover color-1"><% out.print("Total Price: Rs. " +tot+ "/="); %> </p>
         	<input type="hidden" id="price" name="price" value= <%= tot %>>
         	</div>
      
         	    
         </fieldset> 
       
        <a href="" class="button">
        <button type="submit">Next</button>
        </a>
        
       </form>
        </div>
      </div>
      
         

     
    </section>
   
   
    </body>
    <style>
    
    .pricebox{
   
    display: flex;
  	justify-content: center;
  	align-items: center;
    text-align: center;
    width: fit-content;
	block-size: fit-content;
	padding:10px;
    height: 50px;
    box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2);
    }
    
    .buttons {
    margin-left: 10%;
    margin-right: 10%;
    text-align: center;
    
}

.btn-hover {
    width: 300px;
    font-size: 20px;
    justify-content: center;
    padding:10px;
  	align-items: center;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: fit-content;
    text-align:center;
    border: none;
    background-size: 300% 100%;
    border-radius: 30px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}

.btn-hover.color-1 {
       background-image: linear-gradient(to right, #eb3941, #f15e64, #e14e53, #e2373f);
       box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
}


    
    </style>
    
    </html>