package com.RegistrationPack;


import com.Dining.DiningDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        try {	
           
	             System.out.println("\n\n<<--  Inside LoginServlet  -->>\n\n");

	             // Get the values of "uid" and "pass" parameters from the request
	             String uid = request.getParameter("uid");
	             String pwd = request.getParameter("pass");
	             
	             // Call the login() method of DiningDAO to check login credentials
	             ResultSet res = new DiningDAO().login(uid, pwd);        		 
	            
	             // Get the current session associated with the request
	             HttpSession session = request.getSession();
	            

            if (res.next()) {
            		
            		// If user credentials are valid, set user information in the session attributes
	                session.setAttribute("userId", res.getString(1));
	                session.setAttribute("usern", res.getString(2));
	                session.setAttribute("userEmail", res.getString(3));
	                session.setAttribute("userPhone", res.getString(4));
	                session.setAttribute("userName", res.getString(5));
	                
	                // Forward the request and response to "index.jsp"
	                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	                rd.forward(request,response);
            }
            else {
            	
            	// If user credentials are invalid, redirect to "error.jsp"
                response.sendRedirect("error.jsp");
                
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
