package com.customerevent;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/bookVendorServlet")
public class bookVendorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		String eid = session.getAttribute("eid").toString();

		// photos
		String paid = request.getParameter("paid");
		String pvid = request.getParameter("pvid");
		String pp = request.getParameter("pp");

		// Music
		String maid = request.getParameter("maid");
		String mvid = request.getParameter("mvid");
		String mp = request.getParameter("mp");

		// Decorations
		String daid = request.getParameter("daid");
		String dvid = request.getParameter("dvid");
		String dp = request.getParameter("dp");

		// Invitation card
		String iaid = request.getParameter("iaid");
		String ivid = request.getParameter("ivid");
		String ip = request.getParameter("ip");

		// Food and drinks
		String faid = request.getParameter("faid");
		String fvid = request.getParameter("fvid");
		String fp = request.getParameter("fp");
		
		if (paid.toString() != null) {
			
			try {
				EventDBUtil.insertEventVendor(eid, paid, pvid);
				EventDBUtil.updatePrice(pp,eid);
			}catch(Exception e) {
				
			}

		}

		
		if(maid.toString() != null) {
			
			try {
				
				EventDBUtil.insertEventVendor1(eid,maid,mvid );
				EventDBUtil.updatePrice(mp,eid);
				
			}catch(Exception e) {
				
			}
		  
		 
		}
		
		if(daid.toString() != null) {
			
			try {
				
				EventDBUtil.insertEventVendor2(eid,daid,dvid );
				EventDBUtil.updatePrice(dp,eid);
				
			}catch(Exception e) {
				
			}
			  
			  
			 
		}
		
		if(iaid.toString() != null) {
			  
			try {
				
				EventDBUtil.insertEventVendor3(eid,iaid,ivid );
				EventDBUtil.updatePrice(ip,eid);
				
			}catch(Exception e) {
				
			}
			  
			 
		}
		
		if(faid.toString() != null) {
			
			try {
				
				EventDBUtil.insertEventVendor4(eid,faid,fvid );
				EventDBUtil.updatePrice(fp,eid);
				
			}catch(Exception e) {
				
			}
			  
			  
			 
		}
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("JSP/Home.jsp");
		dis.forward(request, response);

	}

}
