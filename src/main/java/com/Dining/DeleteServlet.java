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
 * Servlet implementation class DeleteServlet
 */
@WebServlet( "/DiningDeleteServlet" )
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.print("\n\n<<--  Inside DeleteServlet -->>\n\n ");
		
		// Retrieve the "did" parameter from the URL and parse it as an integer
		int did = Integer.parseInt(request.getParameter("did"));
		
		System.out.println("Did : " + did);//print did
		
		// Call the delete method of DiningDAO to delete the record with the specified did
		DiningDAO diningDelete = new DiningDAO();
		int res = diningDelete.delete(did);
		
		HttpSession httpSession = request.getSession(); 
		
		// Handling the result of the deletion
		if(res >= 1) {
			
			// If insertion is successful, set a success message in the session attribute
			httpSession.setAttribute("message", "Record deleted successfully..!");
			
			// Redirect to the reservationsServle
			RequestDispatcher rd = request.getRequestDispatcher("reservationsServlet");//redirect to welcome page
			rd.forward(request, response);
			
		}else {
			
			// If deletion fails, set an error message in the session attribute
			httpSession.setAttribute("errorMessage", "Record not deleted ..!");
		}
		
	}

	
}
