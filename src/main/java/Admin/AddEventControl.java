package Admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.lang.String;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddEventControl")
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
                 maxFileSize=1024*1024*50,      	// 50 MB
                 maxRequestSize=1024*1024*100)   	// 100 MB
public class AddEventControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private static final String UPLOAD_DIR = "Images";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		//name
		String name = request.getParameter("txt");
		
		//checkbox
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String types[] = request.getParameterValues("s1");
		String description = request.getParameter("txtarea");
	
//		Part filePart = request.getPart("event_image");
//		//filePart.getSubmittedFileName();
//	
//    
//        
//		 // gets absolute path of the web application
//        String applicationPath = request.getServletContext().getRealPath("");
//        // constructs path of the directory to save uploaded file
//        String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;
//		
//		
//		 // creates the save directory if it does not exists
//        File fileSaveDir = new File(uploadFilePath);
//        if (!fileSaveDir.exists()) {
//            fileSaveDir.mkdirs();
//        }
//        System.out.println("Upload File Directory="+fileSaveDir.getAbsolutePath());
       
		
		boolean isTrue;
		isTrue = AdminUtil.AddEvent(name, types, description);
		
		if(isTrue == true)
		{
			try 
			{
				List<AdminFetch> adfetch = AdminUtil.fetchAdminEvent();
				request.setAttribute("adfetch", adfetch);	
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("JSP/addEvent.jsp");
		dis.forward(request, response);
		

	
	
	}



}
