package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledFuture;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Settings1")
public class Settings1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String first_name = request.getParameter("firstname");
		String last_name = request.getParameter("lastname");
		String org_name = request.getParameter("Organization");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String contact = request.getParameter("phone");
		String password = request.getParameter("inputPassword4");
		String newPassword = request.getParameter("inputPassword5");
		String confirmPassword = request.getParameter("inputPassword6");
		
		
	    if ( newPassword != null)
	    {
	    	password = newPassword;
	    }
	    	
	    	
	    	

		HttpSession session = request.getSession();
		int id  = Integer.parseInt(session.getAttribute("Id").toString());
	
		
        boolean isSuccess = false;
		
		try
		{
			isSuccess = CustomerDBUtil.updateCustomer(id, org_name, first_name, last_name, username, email, contact, password);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
		if ( isSuccess == true)
		{
			
			RequestDispatcher dis = request.getRequestDispatcher( "/InitialSettings1");
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
