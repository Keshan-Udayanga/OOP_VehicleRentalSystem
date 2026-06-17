package CarRentalSystem;

import java.awt.image.BufferedImage;
import java.io.InputStream;
import java.sql.ResultSet;
import java.util.*;

import javax.imageio.ImageIO;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class VehicleDetailsUtill {
	
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static ResultSet rs1 = null;
	private static int number = 1000;
	
	public static ArrayList<Vehicles> getAllVehicle(){

		
		ArrayList<Vehicles> vehicle = new ArrayList<>();
		
		try {
			
			conn = (Connection) DBConnection.getConnection();
			stmt = (Statement) conn.createStatement();
			String sql = "select * from vehicle";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {				
				
				// assign table details to variables
				String vehicleId = rs.getNString(1);
				String ownerName = rs.getNString(2);
				String phone = rs.getNString(3);
				String email = rs.getNString(4);
				String type = rs.getNString(5);
				String brand = rs.getNString(6);
				String model = rs.getNString(7);
				String color = rs.getNString(8);
				int year = rs.getInt(9);
				int doors = rs.getInt(10);
				int seats = rs.getInt(11);
				String tType = rs.getNString(12);
				String fType = rs.getNString(13);
				String licens = rs.getNString(14);
				String license_date = rs.getNString(15);
				
				// create vehicle class object
                Vehicles vehi = new Vehicles(vehicleId,ownerName,phone,email,type,brand,model,color,year,doors,seats,tType,fType,licens,license_date);
                
                // add created vehicle class object to array list
                vehicle.add(vehi);
				
			}
			
		}catch(Exception e) {
			//
		}
		
		
		return vehicle;
		
	}
	
	
	
	
	// add new vehicle to the system
	public static void addNewVehicleToTheSystem(Vehicles newVehicle) {
				
		// assign newVehicle class object attributes for variables
		String vehicleId = newVehicle.getVehicleID();
		String ownerName = newVehicle.getOwner();
		String phone = newVehicle.getPhone();
		String email = newVehicle.getEmail();
		String brand = newVehicle.getBrand();
		String model = newVehicle.getModel();
		String color = newVehicle.getColor();
		int year = newVehicle.getManufactureYear();
		int doors = newVehicle.getDoors();
		int seats = newVehicle.getSeats();
		String tType = newVehicle.getTransmissionType();
		String fType = newVehicle.getFuleType();
		String licens = newVehicle.getLicenPlateNum();
		String type = newVehicle.getType();
		String licens_date = newVehicle.getLicense_date();
		
		
		
		try {
			
			conn = (Connection) DBConnection.getConnection();
			stmt = (Statement) conn.createStatement();
			
			// select last vehicle number from DB table
			String sql1 = "SELECT vehicleId FROM vehicle ORDER BY CAST(SUBSTRING(vehicleId, 4) AS UNSIGNED) DESC LIMIT 1";
		    rs = stmt.executeQuery(sql1);
		    
		    int num = 1000; 
		    if(rs.next()) {
		    	String lastId = rs.getString(1); 
		    	// get integer number by result
	            String numericPart = lastId.substring(3);
	            num = Integer.parseInt(numericPart);
		    }
		    
		    
		    // increment last vehicle number by 1
		    num++;
		    // convert integer number to string with 'VEH'
		    String vId = "VEH"+num;
		    
			
			
			// create insert query
			String sql = "INSERT INTO vehicle VALUES ('" + vId + "', '" + ownerName + "', '" + phone + "', '" + email + "', '"+type+"' ,'" + brand + "', '" + model + "', '" + color + "', "
			           + year + ", " + doors + ", " + seats + ", '" + tType + "', '" + fType + "', '" + licens + "','"+licens_date+"')   ";
			
			// execute the insert query
			stmt.executeUpdate(sql);
			number++;			
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
	}
	
	
	
	// validate the vehicle licens plate number
	public static boolean validateLicensPlateNumber(String plateNumber) {
		
		boolean isHaveAlready = false;
		
		try {
	        conn = (Connection) DBConnection.getConnection();
	        stmt = (Statement) conn.createStatement();

	        String sql = "SELECT * FROM vehicle WHERE licens = '" + plateNumber + "' ";
	        rs = stmt.executeQuery(sql);

	        if (rs.next()) {
	        	isHaveAlready = false;
	        }
	        else {
	        	isHaveAlready = true;
	        }

	    } catch (Exception e) {
	        e.getStackTrace();
	    }
		
		// return boolean value
		return isHaveAlready;
		
	}
	
	
	
	
	// get vehicle id for promt to user
	public static ArrayList<ArrayList<String>> getVehicleIdToDisplay(String email,String licen,String name) {

		ArrayList<ArrayList<String>> vehicleId = new ArrayList<>();

	    try {
	        conn = (Connection) DBConnection.getConnection();
	        stmt = (Statement) conn.createStatement();

	        String sql = "SELECT * FROM vehicle WHERE email = '" + email + "' and  licens = '"+licen+"' and ownerName = '"+name+"'  ";
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            ArrayList<String> row = new ArrayList<>();
	            row.add(rs.getString("vehicleId"));
	            row.add(rs.getString("ownerName"));
	            vehicleId.add(row);
	        }

	    } catch (Exception e) {
	        System.out.println(e);
	    }

	    return vehicleId;
	}
	
	
	
	public static Vehicles getVehicleDetailsForProfile(String id, String mail) throws Exception {

	    Vehicles vehi = new Vehicles();

	    conn = (Connection) DBConnection.getConnection();
	    stmt = (Statement) conn.createStatement();
	    
	    // create select query related to vehicle id and owner email
	    String sql = "SELECT * FROM vehicle WHERE vehicleId = '" + id + "' AND email = '" + mail + "'  ";
	    
	    // execute the select details query
	    rs = stmt.executeQuery(sql);	    
	    
	    if (rs.next())  {
	        // assign table details to variables
	    	String vehicleId = rs.getNString(1);
			String ownerName = rs.getNString(2);
			String phone = rs.getNString(3);
			String email = rs.getNString(4);
			String type = rs.getNString(5);
			String brand = rs.getNString(6);
			String model = rs.getNString(7);
			String color = rs.getNString(8);
			int year = rs.getInt(9);
			int doors = rs.getInt(10);
			int seats = rs.getInt(11);
			String tType = rs.getNString(12);
			String fType = rs.getNString(13);
			String licens = rs.getNString(14);
			String license_date = rs.getNString(15);

	        Vehicles v = new Vehicles(vehicleId, ownerName, phone, email, type,brand, model, color, year, doors, seats, tType, fType, licens,license_date);
	        vehi = v;
	    }
	    
	    
	    return vehi;
	}
	
	

	public static void updateVehicleToTheSystem(Vehicles newVehicle) {
		
		// assign newVehicle class object attributes for variables
		String vehicleId = newVehicle.getVehicleID();
		String ownerName = newVehicle.getOwner();
		String phone = newVehicle.getPhone();
		String email = newVehicle.getEmail();
		String brand = newVehicle.getBrand();
		String model = newVehicle.getModel();
		String color = newVehicle.getColor();
		int year = newVehicle.getManufactureYear();
		int doors = newVehicle.getDoors();
		int seats = newVehicle.getSeats();
		String tType = newVehicle.getTransmissionType();
		String fType = newVehicle.getFuleType();
		String licens = newVehicle.getLicenPlateNum();
		String type = newVehicle.getType();
		String licens_date = newVehicle.getLicense_date();
		
		
		try {
			
			conn = (Connection) DBConnection.getConnection();
			stmt = (Statement) conn.createStatement();
			
			// create update query related to vehicle id 
			String sql = "UPDATE vehicle SET "
			        + "ownerName = '" + ownerName + "', "
			        + "contact = '" + phone + "', "
			        + "email = '" + email + "', "
			        + "brand = '" + brand + "', "
			        + "model = '" + model + "', "
			        + "color = '" + color + "', "
			        + "manuYear = " + year + ", "
			        + "doors = " + doors + ", "
			        + "seats = " + seats + ", "
			        + "type = '" + type +"', "
			        + "lastLicenceDate = '" + licens_date +"', "
			        + "transmissionType = '" + tType + "', "
			        + "fuelType = '" + fType + "', "
			        + "licens = '" + licens + "' "
			        + "WHERE vehicleId = '" + vehicleId + "'";

			// execute the update query
			stmt.executeUpdate(sql);			
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
	}
	
	
	
	// create delete method of vehicles
	public static boolean deleteVehicleProfile(String vehiId,String email) {
		
		boolean isDeleted = false;
		
		try {
			
			conn = (Connection) DBConnection.getConnection();
			stmt = (Statement) conn.createStatement();
			
			// create update query related to vehicle id 
			String sql = "delete from vehicle where vehicleId ='"+vehiId+"' and email='"+email+"'  ";

			// execute the update query
			stmt.executeUpdate(sql);	
			
			isDeleted = true;
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return isDeleted;
		
	}
	

}
