package Vendor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateAdvertisement")
public class UpdateAdvertisement extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int aid = Integer.parseInt(request.getParameter("adid"));
		int vid = Integer.parseInt(request.getParameter("vid"));
		String title = request.getParameter("title");
		float price = Float.parseFloat(request.getParameter("price"));
		String desc = request.getParameter("desc");
		String attach = request.getParameter("attach");
		
		boolean isTrue;
		
		isTrue = AdvertisementDBUtil.UpdateAdvertisement(aid, vid, title, price, desc, attach);
		
		System.out.println(aid);
		
		if(isTrue == true) {
			
			List<Advertisement> adDetails = AdvertisementDBUtil.getAdvertisementDetails(aid);
			request.setAttribute("adDetails", adDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			List<Advertisement> adDetails = AdvertisementDBUtil.getAdvertisementDetails(aid);
			request.setAttribute("adDetails", adDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
	}

	}
}
