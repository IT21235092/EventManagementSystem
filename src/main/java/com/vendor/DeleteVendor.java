package com.vendor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DeleteVendor")
public class DeleteVendor extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int id = Integer.parseInt(session.getAttribute("Id").toString());
		boolean isSuccess = false;
		
		try
		{
			isSuccess = VendorDBUtil.deleteVendor(id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		if ( isSuccess == true)
		{
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('You account has been successfully deleted');");
			pw.println("</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("JSP/Home.jsp");
			rd.include(request, response);
		}
		else
		{
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Sorry we couldn't delete your account');");
			pw.println("</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("InitialSettings2");
			rd.include(request, response);
		}
		
	}

}
