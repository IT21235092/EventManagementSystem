package com.customerevent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChangeStatusServlet")
public class ChangeStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int eid = Integer.parseInt(request.getParameter("eid"));
		
		try {
			
			if(EventDBUtil.setEventStatus(eid) == true) {
				
				
			}
			
			else {
				
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
	}

}
