package database;

import java.sql.Connection;
import java.sql.DriverManager;


public class databasecon {

	static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ckda", "root", "ROOT");
		}
		catch(Exception e)
		{
			System.out.println("class error");
		}
		return con;
	}
}
