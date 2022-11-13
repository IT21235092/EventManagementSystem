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

@WebServlet("/VendorInsert")
public class VendorInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String org_name = request.getParameter("Org_Name");
		String userName = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String pswd= request.getParameter("pswd");
		String types = request.getParameter("types");
		String address = request.getParameter("address");
		HttpSession session = request.getSession();
		ArrayList<Object> arr = new ArrayList<>();
		
		
		boolean isSuccess = false;
		
		
		try
		{
			arr = VendorDBUtil.insertVendor(org_name, userName , email, phone, pswd, types, address);
			isSuccess = (boolean) arr.get(2);
			request.setAttribute("username",  arr.get(1) );
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
		if ( isSuccess == true)
		{
			session.setAttribute("username", arr.get(1));
			session.setAttribute("Id", arr.get(0));
			RequestDispatcher dis = request.getRequestDispatcher( "JSP/Vendor_dashboard.jsp");
			dis.forward(request, response);
		}
		else
		{
			
				response.setContentType("text/html");
				PrintWriter pw=response.getWriter();
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('The userName "+arr.get(1)+" has already been taken. Try another username ');");
				pw.println("</script>");
				RequestDispatcher rd=request.getRequestDispatcher("JSP/VLoginSignup.jsp");
				rd.include(request, response);
			
		}
			
	}

}
