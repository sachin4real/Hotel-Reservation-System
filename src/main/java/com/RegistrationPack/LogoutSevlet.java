package com.RegistrationPack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutSevlet
 */
@WebServlet("/LogoutSevlet")
public class LogoutSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();// Get the current session associated with the request
		session.invalidate(); // Invalidate the session, effectively logging out the user
		response.sendRedirect("index.jsp");// Redirect the user to the "index.jsp" page

	}

}
