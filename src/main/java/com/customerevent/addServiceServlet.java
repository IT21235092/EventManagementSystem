package com.customerevent;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Set;


@WebServlet("/addServiceServlet")
public class addServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int aid = Integer.parseInt(request.getParameter("aid"));
		
		
		String type = (String) request.getAttribute("Type");

		HttpSession session = request.getSession();
		
		request.removeAttribute("paid");
		
		HashMap<String,String> hm = new HashMap<>();
		
		hm = (HashMap<String, String>) session.getAttribute("serDetails");
		
		
		
		try {
			List l = EventDBUtil.retrieveAdDetails(aid);
			String value = "";
			value+= l.get(0);
			value+=" Rs.";
			value+=  l.get(1);
			
			
			hm.put("Photos", value);
			
			session.setAttribute("serDetails", hm);
			
			
			request.getSession().setAttribute("paid", aid);
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
        
		RequestDispatcher dis = request.getRequestDispatcher("/bookeventServlet");
		dis.forward(request, response);
        
	}

}
