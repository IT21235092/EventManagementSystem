package com.vendor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Settings2")
public class Settings2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String organization = request.getParameter("organization");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String contact = request.getParameter("phone");
		String types = request.getParameter("types");
		String Location = request.getParameter("address");	
		String password = request.getParameter("inputPassword4");
		
		HttpSession session = request.getSession();
		int id  = Integer.parseInt(session.getAttribute("Id").toString());
	
		
        boolean isSuccess = false;
		
		try
		{
			isSuccess = VendorDBUtil.updateVendor(id, organization, username, password, email, contact, types, Location);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
		if ( isSuccess == true)
		{
			
			RequestDispatcher dis = request.getRequestDispatcher( "/InitialSettings2");
			dis.forward(request, response);
		}
		else if ( isSuccess == false)
		{
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Incorrect details have been entered!!! Please try again');");
			pw.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("JSP/Cust_Settings.jsp");
			rd.include(request, response);
		}
		
	}

}
