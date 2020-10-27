package com.hcl.controllers;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hcl.dao.AdminLoginDao;
import com.hcl.model.Admin;
 
 
public class AdminLoginController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
     String userId = request.getParameter("userId");   
     String password = request.getParameter("password");
     AdminLoginDao loginService = new AdminLoginDao();
     boolean result = loginService.authenticateUser(userId, password);
     Admin user = loginService.getUserByUserId(userId);
     if(result == true){
         request.getSession().setAttribute("user", user);      
         response.sendRedirect("AdminWelcome.jsp");
     }
     else{
         response.sendRedirect("AdminError.jsp");
     }
}
 
}
