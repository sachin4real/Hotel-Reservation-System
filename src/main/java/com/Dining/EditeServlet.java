package com.Dining;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditeServlet
 */
@WebServlet("/EditeServlet")
public class EditeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.print("\n\n<<--  Inside EditeServlet -->>\n\n ");
		
		// Retrieve the "did" parameter from the URL and parse it as an integer
		int did = Integer.parseInt(request.getParameter("did"));

		System.out.println("uid : " + did);//print did
		
		// Set the dining record with the specified "did" as a request attribute
		request.setAttribute("diningRec", new DiningDAO().selectByDid(did));
		
		// Forward the request and response to the "edit.jsp" page
		RequestDispatcher rd = request.getRequestDispatcher("edit.jsp");
		rd.forward(request, response);
	}



}
