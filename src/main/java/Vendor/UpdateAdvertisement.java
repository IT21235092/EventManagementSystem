package Vendor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateAdvertisement
 */
@WebServlet("/UpdateAdvertisement")
public class UpdateAdvertisement extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int aid = request.getParameter("adid");
		int vid = request.getParameter("vid");
		String title = request.getParameter("title");
		float price = request.getParameter("price");
		String desc = request.getParameter("desc");
		String attach = request.getParameter("attach");
		
		boolean isTrue;
		
		isTrue = AdvertisementDButil.UpdateAdvertisement(aid, vid, title, price, desc, attach);
		
		if(isTrue == true) {
			
			List<Advertisement> adDetails = AdvertisementDButil.getAdvertisementDetails(aid);
			request.setAttribute("adDetails", adDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			List<Advertisement> adDetails = AdvertisementDButil.getAdvertisementDetails(aid);
			request.setAttribute("adDetails", adDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
	}

}
