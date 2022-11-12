<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete account</title>
</head>
<body>



   <!-- java code  -->
    <%
        String id = request.getParameter("userID");
        String name = request.getParameter("userName");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String telephone = request.getParameter("telephone");
        String password= request.getParameter("password");
    %>
    
    <p style="text-align:center; font-size: 20px;"><b>Delete your Details</b></p>
    
    <form action="delete" method="post">
        <table>
            <tr>
                <td>User ID</td>
                <td><input type="text" name="id" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>User Name</td>
                <td><input type="text" name="name" value="<%= name %>" readonly></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" value="<%= address %>" readonly ></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="Email" value="<%= email %>" readonly></td>
            </tr>
            <tr>
                <td>Telephone</td>
                <td><input type="text" name="mobile" value="<%= telephone %>" readonly></td>
            </tr>    
        </table>
        <input type="submit" name ="submit" value="delete Account">
    </form>
</body>
</html>