package com.customerevent;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/addServiceServlet4")
public class addServiceServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int aid = Integer.parseInt(request.getParameter("aid"));
		int vid = Integer.parseInt(request.getParameter("vid"));
		double price = Double.parseDouble(request.getParameter("price"));
		
		String type = (String) request.getAttribute("Type");

		HttpSession session = request.getSession();
		
		
		HashMap<String,String> hm = new HashMap<>();
		
		hm = (HashMap<String, String>) session.getAttribute("serDetails");
		
		
		
		try {
			List l = EventDBUtil.retrieveAdDetails(aid);
			String value = "";
			value+= l.get(0);
			value+=" Rs.";
			value+=  l.get(1);
			
			hm.put("Invitation Cards", value);
			
			session.setAttribute("serDetails", hm);
	
			
			request.getSession().setAttribute("iaid", aid);
			request.getSession().setAttribute("ivid", vid);
			request.getSession().setAttribute("ip", price) ;
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
        
		RequestDispatcher dis = request.getRequestDispatcher("/bookeventServlet");
		dis.forward(request, response);
		
		
		
	}

}
