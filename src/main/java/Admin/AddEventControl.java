package Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@MultipartConfig
@WebServlet("/AddEventControl")
public class AddEventControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		//name
		String name = request.getParameter("txt");
		
		//checkbox
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String types[] = request.getParameterValues("s1");
		 
		//teaxtarea
		
		String description = request.getParameter("txtarea");
		
		
		boolean isTrue;
		isTrue = AdminUtil.AddEvent(name, types, description);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
