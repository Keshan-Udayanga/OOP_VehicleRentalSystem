package CarRentalSystem;

import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class AdminDBUtill {
	
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static ResultSet rs1 = null;
	
	
	
	// validate the admin login
	public static Admin checkAdminLoginDetails(String userName, String pass) throws Exception {

	    Admin add_check = new Admin();

	    conn = (Connection) DBConnection.getConnection();
	    stmt = (Statement) conn.createStatement();
	    
	    // create select query related to vehicle id and owner email
	    String sql = "SELECT * FROM admin WHERE username = '" + userName + "' AND password = '" + pass + "'  ";
	    
	    // execute the select details query
	    rs = stmt.executeQuery(sql);	    
	    
	    if (rs.next())  {
	        // assign table details to variables
	        int admin_id = rs.getInt(1);
	        String admin_name = rs.getString(2);
	        String email = rs.getString(3);
	        String password = rs.getString(4);
	        String created_date = rs.getString(5);
	        String role = rs.getString(6);
	        String contact_number = rs.getString(7);
	        String address = rs.getString(8);
	        String gender = rs.getString(9);

	        Admin admin = new Admin(admin_id, admin_name, email, password,created_date,role, contact_number,address, gender);
	        add_check = admin;
	    }
	    
	    
	    return add_check;
	}
	

}
