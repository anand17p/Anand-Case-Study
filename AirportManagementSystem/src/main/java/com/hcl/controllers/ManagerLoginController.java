package com.hcl.controllers;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hcl.dao.ManagerLoginDao;
import com.hcl.model.Manager;
 
 
public class ManagerLoginController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
     String userId = request.getParameter("userId");   
     String password = request.getParameter("password");
     ManagerLoginDao loginService = new ManagerLoginDao();
     boolean result = loginService.authenticateUser(userId, password);
     Manager user = loginService.getUserByUserId(userId);
     if(result == true){
         request.getSession().setAttribute("user", user);      
         response.sendRedirect("ManagerWelcome.jsp");
     }
     else{
         response.sendRedirect("ManagerError.jsp");
     }
}
 
}
