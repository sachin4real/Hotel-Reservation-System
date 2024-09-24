package com.Dining;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.print("\n\n<<--  Inside SearchServlet -->>\n\n ");
		
		String item = request.getParameter("item");
		
		System.out.print(item);

		request.setAttribute("itemList", new DiningDAO().selectByItem(item));
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("dining.jsp");//forwarding 
		rd.forward(request, response);
		
	
	}

	

}
