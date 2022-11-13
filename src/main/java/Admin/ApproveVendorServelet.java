package Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ApproveVendorServelet")
public class ApproveVendorServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			try 
			{
				List<VendorApprove> approve = AdminUtil.approveVendor();
				request.setAttribute("approve",approve);	
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("JSP/VendorApproval.jsp");
		dis.forward(request, response);

		
		
	}

}
