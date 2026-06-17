package CarRentalSystem;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.*;

public class DriverDBUtil {
	
	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
	
	public static boolean insertDriver(String dName , String phone , String address , String email , String licenseNo , String licenseExp , String vType , String uName , String password){
		
		boolean isSuccess = false;
		
		try {
			con = (Connection)DBConnection.getConnection();
			stat=(Statement)con.createStatement();
			
			String sql = "Insert INTO driver VALUES(0 , '"+dName+"','"+phone+"', '"+address+"' , '"+email+"' , '"+licenseNo+"' , '"+licenseExp+"' , '"+vType+"' , '"+uName+"' , '"+password+"')";
			
			int rs = stat.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Driver> validate(String userName , String password){
	
		ArrayList<Driver> driver = new ArrayList<>();
		
		try {
			con = (Connection) DBConnection.getConnection();
			stat=(Statement) con.createStatement();
			
			String sql = "SELECT * FROM driver WHERE uName = '"+userName+"' AND password = '"+password+"'";
		
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String address = rs.getString(4);
				String email = rs.getString(5);
				String licenNo = rs.getString(6);
				String licenExp = rs.getString(7);
				String vType = rs.getString(8);
				String uName = rs.getString(9);
				String pass = rs.getString(10);
				
				System.out.println(id);
				Driver d = new Driver(id , name , phone , address , email , licenNo , licenExp , vType , uName , pass);
				System.out.println(d.getPID()); 
				driver.add(d);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return driver;
	}



	public static boolean updateDriver(String id , String dname , String phone , String address , String email , String licenNo , String licenExp , String vtype , String uname ) {
	
		try {
			con =(Connection) DBConnection.getConnection();
			stat= (Statement)con.createStatement();
			
			System.out.println(id);
			String sql = "UPDATE driver SET dName = '"+dname+"' , phone = '"+phone+"' , address = '"+address+"' , email = '"+email+"' , "
					+ "license_number = '"+licenNo+"' , license_expiry_date = '"+licenExp+"' , vehicle_type = '"+vtype+"' , uName = '"+uname+"'"
					+ "WHERE idDriver = '"+id+"'";
			int rs = stat.executeUpdate(sql);

			if(rs > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		return isSuccess;
		
	}

	public static List<Driver> getDriverDetails(String id){
		
		int convertedID = Integer.parseInt(id);
		ArrayList<Driver> driver = new ArrayList<>();
		
		try {
			con =(Connection) DBConnection.getConnection();
			stat=(Statement)con.createStatement();
			
			String sql = "SELECT * FROM driver WHERE idDriver='"+convertedID+"'";
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				int dId = rs.getInt(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String address = rs.getString(4);
				String email = rs.getString(5);
				String licenNo = rs.getString(6);
				String licenExp = rs.getString(7);
				String vType = rs.getString(8);
				String uName = rs.getString(9);
				String pass = rs.getString(10);
				
				Driver d = new Driver(dId , name , phone , address , email , licenNo , licenExp , vType , uName , pass);
				driver.add(d);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return driver;
		}

	public static boolean deleteDriver(String id) {
		
		int convertedId = Integer.parseInt(id);
		
		try {
			con = (Connection)DBConnection.getConnection();
			stat=(Statement)con.createStatement();
			
			String sql = "DELETE FROM driver WHERE idDriver='"+convertedId+"'";
			int r = stat.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}	
