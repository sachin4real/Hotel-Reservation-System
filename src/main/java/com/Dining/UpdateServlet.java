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
 * Servlet implementation class UpdateServlet
 */
@WebServlet( "/DiningUpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  		System.out.print("\n\n<<--  Inside UpdateServlet -->>\n\n ");
  	
  		// Create a new Dining object to hold the updated values
  		Dining diningUpdate = new Dining();
  	
  		// Set the updated values in the Dining object
  		diningUpdate.setDid(Integer.parseInt(request.getParameter("did")));
  		diningUpdate.setName(request.getParameter("name"));  		
  		diningUpdate.setEmail(request.getParameter("email"));
  		diningUpdate.setPhone(request.getParameter("phoneNum"));
  		diningUpdate.setNumOfpeople(Integer.parseInt(request.getParameter("numOfPep")));
  		diningUpdate.setDate(request.getParameter("date"));		
  		diningUpdate.setTime(request.getParameter("time"));
  		diningUpdate.setMeal(request.getParameter("meal"));
		diningUpdate.setUid(Integer.parseInt(request.getParameter("uid")));

		int uid = Integer.parseInt(request.getParameter("uid"));
				
		DiningDAO diningUpdateDAO = new DiningDAO();// Create an instance of the DiningDAO class
		int res =  diningUpdateDAO.update(diningUpdate);// Call the update method of DiningDAO to update the dining record
		
		HttpSession httpSession = request.getSession(); 
		
		// Handling the result of the update
		if(res >= 1) {
			
			// If update is successful, set a success message in the session attribute
			httpSession.setAttribute("message", "Record updated successfully..!");			
			RequestDispatcher rd = request.getRequestDispatcher("reservationsServlet?userId="+uid);
			rd.forward(request, response);
			
		}else {
			
			// If update fails, set an error message in the session attribute
			httpSession.setAttribute("errorMessage", "Record not updated ..!");
			RequestDispatcher rd = request.getRequestDispatcher("reservationsServlet?userId="+uid);
			rd.forward(request, response);
		}

	}

}
