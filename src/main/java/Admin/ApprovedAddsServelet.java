package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ApprovedAddsServelet")
public class ApprovedAddsServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//id
		int addID = Integer.parseInt(request.getParameter("txt"));
		
	
		boolean isTrue;
		isTrue = AdminUtil.ApproveVendorAdd(addID);
		
		if(isTrue == true)
		{

			try 
			{
				List<VendorApprove> approve = AdminUtil.approveVendor();
				request.setAttribute("approve",approve);	
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("ApproveVendorServelet");
		dis.forward(request, response);
		
		
	}

}
