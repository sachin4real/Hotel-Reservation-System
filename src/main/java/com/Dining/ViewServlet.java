package com.Dining;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/reservationsServlet")

public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.print("\n\n<<--  Inside reservationsServlet -->>\n\n ");
		
		// Retrieve the "userId" parameter from the URL and parse it as an integer
		int uid = Integer.parseInt(request.getParameter("userId"));

		System.out.println("uid : " + uid);//print uid
		
		// Set the dining reservations associated with the specified "userId" as a request attribute
		request.setAttribute("dinRes", new DiningDAO().selectByUid(uid));
		
		// Forward the request and response to the "reservations.jsp" page
		RequestDispatcher rd = request.getRequestDispatcher("reservations.jsp");//forwarding 
		rd.forward(request, response);


	}


}
