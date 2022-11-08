package com.vendor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/VendorLogin")
public class VendorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email = request.getParameter("email");
		String password = request.getParameter("pswd");
	    boolean isSuccess = false;
		ArrayList arr = new ArrayList();
		
		try 
		{
			arr = VendorDBUtil.validate(email, password);
			isSuccess = (boolean) arr.get(2);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		if ( isSuccess == true)
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", arr.get(1));
			session.setAttribute("Id", arr.get(0));
			
			RequestDispatcher dis = request.getRequestDispatcher("JSP/Vendor_dashboard.jsp");
			dis.forward(request, response);	
		}
		else
		{
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Incorrect email or password! Please try again');");
			pw.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("JSP/VLoginSignup.jsp");
			rd.include(request, response);
		}
	}

}
