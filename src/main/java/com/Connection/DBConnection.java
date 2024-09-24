package com.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;

public class DBConnection
{
	// Set the connection parameters
	protected final String url 	= "jdbc:mysql://localhost:3306/hotel";
	protected final String user =  "root";
	protected final String pwd 	= "";
    
    protected Connection getConnetion() {
    	
        System.out.println("\n\n<<-- DBConnection class is running -->>\n\n");
        try {

	            
	            // Create a connection using DriverManager
	            Connection con = DriverManager.getConnection(this.url, this.user, this.pwd);
	            System.out.println("Connection Created......!!!!!!");
	            
	            // Load the JDBC driver
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            System.out.println("Driver LOADED......!!!!!!");
	            
	            return con;//return connection
            
        }
        catch (SQLException | ClassNotFoundException ex2) {
        		
        	System.out.println("Database connection FALIED....!!!!");
            ex2.printStackTrace();
                
            return null;
        }
    }
}
