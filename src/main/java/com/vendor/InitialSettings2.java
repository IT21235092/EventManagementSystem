package com.vendor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/InitialSettings2")
public class InitialSettings2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int id  = Integer.parseInt(session.getAttribute("Id").toString());
	    System.out.println(id);
		
		try 
		{
			List<Vendor> venDetails = VendorDBUtil.getVendorDetails(id);
			
			
			request.setAttribute("venDetails", venDetails);	
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("JSP/Vendor_Settings.jsp");
		dis.forward(request, response);
	}

}
