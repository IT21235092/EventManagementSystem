package com.customerevent;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bookVendorServlet")
public class bookVendorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String eid = request.getParameter("eid");

		// photos
		String paid = request.getParameter("paid");
		String pvid = request.getParameter("pvid");

		// Music
		String maid = request.getParameter("maid");
		String mvid = request.getParameter("mvid");

		// Decorations
		String daid = request.getParameter("daid");
		String dvid = request.getParameter("dvid");

		// Invitation card
		String iaid = request.getParameter("iaid");
		String ivid = request.getParameter("ivid");

		// Food and drinks
		String faid = request.getParameter("faid");
		String fvid = request.getParameter("fvid");

		if (paid != null) {

			EventDBUtil.insertEventVendor(/* eid, */paid, pvid);

		}

		
		if(maid != null) {
		  
		  EventDBUtil.insertEventVendor1( /*eid,*/ maid,mvid );
		 
		}

	}

}
