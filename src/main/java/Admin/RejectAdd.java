package Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RejectAdd")
public class RejectAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		

		int addID = Integer.parseInt(request.getParameter("txt"));
		
		boolean isTrue;
		
		isTrue = AdminUtil.RejectAdvertisement(addID);
		
		
		if(isTrue == true)
		{
			
			RequestDispatcher dis = request.getRequestDispatcher("ApproveVendorServelet");
			dis.forward(request, response);
			
		}
	
	}

}
