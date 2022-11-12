<%@ page language="java" session = "true" contentType="text/html; charset=ISO-8859-1"
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
		ResultSet rs1 = null;
    
    %>
    
    
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../CSS/bookevent.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta charset = "UTF-8">
        <title> Customer Dashboard | Eventrra</title>
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>
    <body onload="document.frm.reset();">
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
    date.max = new Date().toISOString().split("T")[0];

    </script>
    
    
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
               <div class="row">
    <div class="col-md-12">
      <form name ="frm" action="../addEvent" method="post">
        <h1> Book Event </h1>
        
        <fieldset>
          
          <legend><span class="number">1</span> Event details</legend>
          
          <label for="type">Select Event type:</label>
  		  <select name="type" id="type" class="txt" required>
  		  <%
  		  
  		  try{
  			  
  			con = DriverManager.getConnection(url, user, pass);
      	 	stmt = con.createStatement();
      	 	
      	 	String sql = "select Cat_name from category";
      	 	
      	 	rs = stmt.executeQuery(sql);
      	 	
      	 	while(rs.next()){%>
      	 		
      	 		<option value="<%= rs.getString("Cat_name") %>"><%= rs.getString("Cat_name") %></option>
      	 		
      	 	<% }
      	 	
      	 	
  			  
  			  
  		  }catch(Exception e){
  			  e.printStackTrace();
  		  }
  		  
  		  
  		  
  		  %>
    		
  		  </select>
        
          <label for="name">Event Name:</label>
          <input type="text" id="name" name="name" class="txt" required>
        
          <label for="number">Number of Guests:</label>
          <input type="number" id="num" name="num" required min="30" max="400">
       
          <label for="date">Event Date:</label>
          <input type="date" id="edate" name="edate" required  >
          
          <input type="hidden" id="cid" name="cid" value="<%= session.getAttribute("Id") %>" >
          
          
        <br>
          
          
        </fieldset>
     
        
        <button type="submit">Next</button>
        
        
       </form>
        </div>
      </div>
      
         

     
    </section>
   
   
    </body>

