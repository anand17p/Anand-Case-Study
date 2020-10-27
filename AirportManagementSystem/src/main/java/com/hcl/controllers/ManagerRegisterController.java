package com.hcl.controllers;
 
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hcl.dao.ManagerRegisterDao;
import com.hcl.model.Manager;
 
 
public class ManagerRegisterController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     response.setContentType("text/html;charset=UTF-8");
     PrintWriter out = response.getWriter();
     String firstName = request.getParameter("firstName");
     String lastName = request.getParameter("lastName");
     int age = Integer.parseInt(request.getParameter("age"));
     String gender = request.getParameter("gender");
     int contactNumber = Integer.parseInt(request.getParameter("contactNumber"));
     String userId = request.getParameter("userId");
     String password = request.getParameter("password");
     Manager user = new Manager(firstName,lastName,age,gender,contactNumber,userId, password);
             
     try { 
         ManagerRegisterDao registerService = new ManagerRegisterDao();
         boolean result = registerService.register(user);      
         out.println("<html>");
         out.println("<head>");      
         out.println("<title>Registration Successful</title>"); 
         out.println("<style>\r\n"
          		+ "body{\r\n"
          		+ "background-image:url(\"https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2020/02/0/0/iStock-airline.jpg?ve=1&tl=1\");\r\n"
          		+ "background-position:center center;\r\n"
          		+ "bakground-size:cover;\r\n"
          		+ "background-repeat:no-repeat;\r\n"
          		+ "background-attachment:fixed;\r\n"
          		+ "}\r\n"
          		+ "</style>");
         out.println("</head>");
         out.println("<body>");
         out.println("<center>");
         if(result){
             out.println("<h1 style='color:green;'>Registration Successful!!!</h1>");
             out.println("To login with new UserId and Password<a href=ManagerLogin.jsp>Click here</a>");
         }else{
             out.println("<h1 style='color:red;'>Registration Failed...Already Exist</h1>");
             out.println("To try again<a href=ManagerRegister.jsp>Click here</a>");
         }
         out.println("</center>");
         out.println("</body>");
         out.println("</html>");
     } finally {       
         out.close();
     }
}
 
}
