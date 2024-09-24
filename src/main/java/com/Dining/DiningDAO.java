package com.Dining;

import com.Connection.DBConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DiningDAO extends DBConnection{
	
	//sql quarries for web application actions
	private String login 			= "select * from customer where username=? and password=? ";
	private String insert 			= "INSERT INTO dining (name, email, phone, numOfPeople, date, time, meal, uid) VALUES (?,?,?,?,?,?,?,?)";
	private String update 			= "UPDATE dining SET name=?, email=?, phone=?, numOfpeople=?, date=?, time=?, meal=?, uid=? WHERE did=? ";
	private String delete 			= "DELETE FROM dining WHERE did=?";
	private String select_by_uid 	= "SELECT * FROM dining WHERE uid=?";
	private String select_by_did 	= "SELECT * FROM dining WHERE did=?";
	private String select_by_item 	= "SELECT itemName,regular,large FROM items WHERE type=?";
	
	

	//user login
	public ResultSet login (String userName, String pwd)
	{
		System.out.println("\n\nInside login method************************************\n\n");


		try {
				PreparedStatement stmt = super.getConnetion().prepareStatement(this.login);
				stmt.setString(1, userName);
				stmt.setString(2, pwd);

				System.out.println(stmt);
				System.out.println("Loged in successfuly\n\n");
				
				ResultSet res = stmt.executeQuery();//execute query and get result

				return res;

		} catch (SQLException e) {

			e.printStackTrace();

		}//sql statement

		return null;


	}
	
	
	//insert
	public int insert(Dining dining) {

		try {

			System.out.println("\n\nInside IncertInto Method **************************************************\n\n");
			
			// Prepare the SQL statement for inserting a dining record into the database
			PreparedStatement stmt;
			stmt = super.getConnetion().prepareStatement(this.insert);
			
			// Set the values for the placeholders in the SQL statement
			stmt.setString(	1, dining.getName());
			stmt.setString(	2, dining.getEmail());
			stmt.setString(	3, dining.getPhone());
			stmt.setInt(	4, dining.getNumOfpeople());
			stmt.setString(	5, dining.getDate());
			stmt.setString(	6, dining.getTime());
			stmt.setString(	7, dining.getMeal());
			stmt.setInt(	8, dining.getUid());
			
			
			System.out.println(stmt);
			System.out.println("Inserted data successfuly\n\n");
			
			int i = stmt.executeUpdate();// Execute the query and get the number of rows affected
			
			return i;

		} catch (SQLException e) {

			e.printStackTrace();
			
		}

		return 0;
	}
	
	
	//update
	public int update(Dining diningUpdate) {
		
		try {


				System.out.println("\n\nInside update method************************************\n\n");
				
				PreparedStatement stmt;	
				stmt = super.getConnetion().prepareStatement(this.update);
	
				stmt.setString(	1, diningUpdate.getName());
				stmt.setString(	2, diningUpdate.getEmail());
				stmt.setString(	3, diningUpdate.getPhone());
				stmt.setInt(	4, diningUpdate.getNumOfpeople());
				stmt.setString(	5, diningUpdate.getDate());
				stmt.setString(	6, diningUpdate.getTime());
				stmt.setString(	7, diningUpdate.getMeal());
				stmt.setInt(	8, diningUpdate.getUid());
				stmt.setInt(	9, diningUpdate.getDid());
				
				System.out.println(stmt);
				System.out.println("Updated data successfuly\n\n");
				
				stmt.executeUpdate();//execute query and get result

				return 1;

		} catch (SQLException e) {
	
			e.printStackTrace();
		}
		
		return 0;
	}
	
	
	
	//delete
	public int delete(int did) {
		
		
		System.out.print("\n\n<<--  Inside Delete -->>\n\n ");
		System.out.print("did : " + did);

		try {
				
				PreparedStatement stmt = super.getConnetion().prepareStatement(delete);
				stmt.setInt(1,did);
				
				System.out.println(stmt);
				System.out.println("Deleted data successfuly\n\n");
				
				int res = stmt.executeUpdate();
				
				return res;
				

		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	
	//select by User ID
	public ArrayList<Dining> selectByUid(int uid){

		ArrayList<Dining> dinResSet = new ArrayList<>();	

		try {
				System.out.print("\n\n<<--  Inside selectByUid method -->>\n\n ");

				// Prepare the SQL statement for selecting dining records by user ID
				PreparedStatement stmt = super.getConnetion().prepareStatement(select_by_uid);
				stmt.setInt(1, uid);//pass value to the placeholder
				
				System.out.println(stmt);//print sql statement
				
				ResultSet res = stmt.executeQuery();// Execute the query and get the result set

				int c = 0;//to count rows
				
					while(res.next()) {
						
						// Create a new Dining object and set its attributes based on the retrieved data
						Dining din = new Dining();

						din.setDid(res.getInt(1));
						din.setName(res.getString(2));
						din.setEmail(res.getString(3));
						din.setPhone(res.getString(4));
						din.setNumOfpeople(res.getInt(5));
						din.setDate(res.getString(6));
						din.setTime(res.getString(7));
						din.setMeal(res.getString(8));
						din.setUid(res.getInt(9));

						dinResSet.add(din);// Add the Dining object to the ArrayList

						c++;

					}

					System.out.println("\nRecord count in selectByID:  " + c);//print count of rows

					return dinResSet;

		} catch (SQLException e) {

			e.printStackTrace();

		}

		//print in console if array is empty or not
		if(dinResSet.isEmpty()) {
			System.out.println("ArrayList in selectByID is EMPTY...!!!");
		}else {
			System.out.println("ArrayList in selectByID is NOT EMPTY...!!!");
		}


		return null;


	}
	
	
	//select BY Dining ID
	public ArrayList<Dining> selectByDid(int did){

		ArrayList<Dining> selectDiningById = new ArrayList<>();

		try {
				System.out.print("\n\n<<--  Inside selectByDid -->>\n\n ");

				PreparedStatement stmt = super.getConnetion().prepareStatement(select_by_did);
				stmt.setInt(1, did);

				System.out.println(stmt);


				ResultSet res = stmt.executeQuery();

				int c = 0;
					while(res.next()) {

						Dining din = new Dining();

						din.setDid(res.getInt(1));
						din.setName(res.getString(2));
						din.setEmail(res.getString(3));
						din.setPhone(res.getString(4));
						din.setNumOfpeople(res.getInt(5));
						din.setDate(res.getString(6));
						din.setTime(res.getString(7));
						din.setMeal(res.getString(8));
						din.setUid(res.getInt(9));

						selectDiningById.add(din);

						c++;

					}

					System.out.println("\nRecord count in selectByID:  " + c);


		} catch (SQLException e) {

			e.printStackTrace();

		}//sql statement

		if(selectDiningById.isEmpty()) {
			System.out.println("ArrayList in selectByID is EMPTY...!!!");
		}else {
			System.out.println("ArrayList in selectByID is NOT EMPTY...!!!");
		}


		return selectDiningById;



	}

	
	//Select by Item Name for SEARCH BAR
	public ArrayList<Item> selectByItem(String item){

		ArrayList<Item> selectItem = new ArrayList<>();

		try {
				System.out.print("\n\n<<--  Inside selectByDid -->>\n\n ");

				PreparedStatement stmt = super.getConnetion().prepareStatement(select_by_item);
				stmt.setString(1, item);;

				System.out.println(stmt);

				ResultSet res = stmt.executeQuery();

				int c = 0;
					while(res.next()) {

						Item itm = new Item();
						
						itm.setItemName(res.getString("itemName"));
						itm.setRegular(res.getDouble("regular"));
						itm.setLarge(res.getDouble("large"));
				
						selectItem.add(itm);
						c++;

					}

					System.out.println("\nRecord count in selectByID:  " + c);

		} catch (SQLException e) {

			e.printStackTrace();

		}

		if(selectItem.isEmpty()) {
			System.out.println("ArrayList in selectByID is EMPTY...!!!");
		}else {
			System.out.println("ArrayList in selectByID is NOT EMPTY...!!!");
		}
		return selectItem;
	}
	
	
	
		
		
}



