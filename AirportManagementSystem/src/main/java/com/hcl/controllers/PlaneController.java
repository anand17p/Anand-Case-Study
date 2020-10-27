package com.hcl.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hcl.dao.PlaneDao;
import com.hcl.model.Plane;

public class PlaneController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		long id = Long.parseLong(request.getParameter("id"));
		String name = request.getParameter("name");
		String details = request.getParameter("details");
		Plane user = new Plane(id, name, details);

		try {
			PlaneDao registerService = new PlaneDao();
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
			if (result) {
				out.println("<h1 style='color:green;'>Registered Successfully!!! </h1>");
				out.println("<a href=AdminWelcome.jsp>Go Back</a>");
			} else {
				out.println("<h1 style='color:red;'>Registration Failed...Already Exist</h1>");
				out.println("To try again<a href=PlaneRegister.jsp>Click here</a>");
			}
			out.println("</center>");
			out.println("</body>");
			out.println("</html>");
		} finally {
			out.close();
		}

	}
}
