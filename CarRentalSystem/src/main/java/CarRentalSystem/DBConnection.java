package CarRentalSystem;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static String url = "jdbc:mysql://localhost:3306/Car_Rental";
	private static String user = "root";
	private static String password = "1234";
	private static Connection conn;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("Connected");
		}catch(Exception e) {
			System.out.println("Not connected !");
		}
		
		return conn;
		
	}

}
