package com.Dining;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class InsertServlet
 */
@WebServlet("/DiningInsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Dining dining = new Dining();
		
		//Retrieve values from the URL parameters and set them in the Dining object
		dining.setName(request.getParameter("name"));
		dining.setEmail(request.getParameter("email"));
		dining.setPhone(request.getParameter("phoneNum"));
		dining.setNumOfpeople(Integer.parseInt(request.getParameter("numOfPep")));
		dining.setDate(request.getParameter("date"));		
		dining.setTime(request.getParameter("time"));
		dining.setMeal(request.getParameter("meal"));
		dining.setUid(Integer.parseInt(request.getParameter("uid")));
		
		// Call the insert method of DiningDAO and pass the Dining object
		DiningDAO diningDAO = new DiningDAO();
		int i = diningDAO.insert(dining);
		
		System.out.println("user id in iNSERT : " + dining.getUid());//print user id

		HttpSession httpSession = request.getSession(); 
		
		
		//forwarding
		if(i >= 1) {			
			
			// If insertion is successful, set a success message in the session attribute
			httpSession.setAttribute("message", "Resavation was successfuly added..!!");
			
			RequestDispatcher rd = request.getRequestDispatcher("dining.jsp");
			rd.forward(request, response);
			
		}else {
			
			// If insertion fails, set an error message in the session attribute
			httpSession.setAttribute("errorMessage", "Resavation was not successfuly added..!!");
			
		}
	}

	

}
