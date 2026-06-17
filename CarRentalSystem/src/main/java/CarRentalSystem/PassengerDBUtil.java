package CarRentalSystem;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;


public class PassengerDBUtil {
	private static Connection con;
	private static ResultSet rs;
	private static boolean valid;
	private static PreparedStatement pst;

	//Check whether the email already exists in database
	public static boolean emailValidation(String email) {
		try {
		    con = DBConnection.getConnection();
			String sql = "select * from passenger where Email=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, email);
			
			rs = pst.executeQuery();
			
			if(rs.next()) {
				valid = false;
			}
			else {
				valid =  true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return valid;
	}
	
	//Check whether the phone number already exists in database
	public static boolean mobileValidation(String phone) {
		try {
		    con = DBConnection.getConnection();
			String sql = "select * from passenger where Phone=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, phone);
			
			rs = pst.executeQuery();
			
			if(rs.next()) {
				valid = false;
			}
			else {
				valid =  true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return valid;
	}
	
	//Overloading the mobileValidation method to check the phone number exists except the given email's phone number
	public static boolean mobileValidation(String phone,String email) {
		try {
		    con = DBConnection.getConnection();
			String sql = "select * from passenger where Phone=? and Email NOT IN (?)";
			pst = con.prepareStatement(sql);
			pst.setString(1, phone);
			pst.setString(2, email);
			
			rs = pst.executeQuery();
			
			if(rs.next()) {
				valid = false;
			}
			else {
				valid =  true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return valid;
	}
	
	//Insert Passenger to the database
	public static boolean setPassenger(Passenger passenger) {
		
		try {
			con = DBConnection.getConnection();
			
			String name = passenger.getName();
			String phone = passenger.getPhone();
			String address = passenger.getAddress();
			String email = passenger.getEmail();
			int age = passenger.getAge();
			String gender = passenger.getGender();
			
			String sql = "INSERT INTO passenger(Name,Phone,Address,Email,Age,Gender) VALUES (? ,? ,?, ?, ?, ?)";
			
			pst = con.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, phone);
			pst.setString(3, address);		
			pst.setString(4, email);
			pst.setInt(5, age);
			pst.setString(6, gender);
			
			int numrows = pst.executeUpdate();
			
			if(numrows>0) {
				valid = true;
				
			}else {
				valid = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return valid;
	}
	
	//Validate whether the user entered passwords are equals
	public static boolean validatePassword(String pass1, String pass2) {
		if(pass1.equals(pass2)) {
			
			valid = true;
		}
		else 
			valid = false;
		
		return valid;
	}
	
	//Insert the password to the relative email in database
	public static boolean setPassword(String pass, String email) {
		
		try {
			con = DBConnection.getConnection();
			
			String sql = "UPDATE passenger set Password=? WHERE Email=?";
			
			pst = con.prepareStatement(sql);
			pst.setString(1, pass);
			pst.setString(2, email);
			
			int numrows = pst.executeUpdate();
			
			if(numrows>0) {
				valid = true;
			}
			else
				valid = false;
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return valid;
	}
	
	//Return a passenger type array to a given email
	public static List<Passenger> getProfile(String email){
		List<Passenger> pas = new ArrayList<>();
		
		try{
			 con = DBConnection.getConnection();
			
			String sql = "select * from passenger where Email = ?";
			pst = con.prepareStatement(sql);
			
			pst.setString(1, email);
			
			rs = pst.executeQuery();
			
			if(rs.next()) {
				String pid = rs.getString(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String address = rs.getString(4);
				int age = rs.getInt(6);
				String gender = rs.getString(7);
				String pass = rs.getString(8);
				
				Passenger ps = new Passenger(pid,name,phone,address,email,age,gender,pass);
				
				pas.add(ps);
			}
			
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return pas;
		
		
	}
	
	//Check the given email and password valid in the database
	public static boolean validateLogin(String email,String password) {
		con = DBConnection.getConnection();
		String sql = "select * from passenger where Email = ? and Password = ?";
		try {
			
			pst = con.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, password);
			
			rs = pst.executeQuery();
			
			
			if(rs.next()) {
				valid = true;
				
			}
			else
				valid = false;
		
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return valid;

	}
	
	//Update the record values to a given passenger
	public static boolean updatePassenger(Passenger passenger) {
		con = DBConnection.getConnection();
		
		String name = passenger.getName();
		String phone = passenger.getPhone();
		String address = passenger.getAddress();
		int age = passenger.getAge();
		String email = passenger.getEmail();
		
		String sql = "Update passenger set Name=? , Phone=? , Address=? , Age=? where Email=?";
		
		
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, phone);
			pst.setString(3, address);
			pst.setInt(4, age);
			pst.setString(5, email);
			
			int numrows = pst.executeUpdate();
			
			
			if(numrows>0) {
				valid = true;
			}
			else
				valid = false;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return valid;
	}
	
	//Delete the passenger
	public static boolean deletePassenger(String email) {
		
		try {
			con = DBConnection.getConnection();
			
			String sql = "DELETE from passenger where Email=?";
			
			pst = con.prepareStatement(sql);
			
			pst.setString(1, email);
			
			int numRows = pst.executeUpdate();
			
			if(numRows > 0) {
				valid = true;
			}
			else
				valid = false;
			
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return valid;
	}

}
