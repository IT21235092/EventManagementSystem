package com.vendor;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.CustomerDBUtil;

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
		ArrayList arr = new ArrayList<>();
		
		
		boolean isSuccess = false;
		
		
		try
		{
			arr = VendorDBUtil.insertVendor(org_name, userName , email, phone, pswd, types, address);
			isSuccess = (boolean) arr.get(1);
			request.setAttribute("username",  arr.get(0) );
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
		if ( isSuccess == true)
		{
			
			RequestDispatcher dis = request.getRequestDispatcher( "JSP/Vendor_dashboard.jsp");
			dis.forward(request, response);
		}
	}

}
