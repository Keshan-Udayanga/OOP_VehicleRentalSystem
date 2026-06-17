package CarRentalSystem;



public class Vehicles extends User{
	
	private String type;
	private String brand;
	private String model;
	private String color;
	private int manufactureYear;
	private int doors;
	private int seats;	
	private String transmissionType;	
	private String fuleType;
	private String licenPlateNum;
	private String license_date;
	
	public Vehicles() {
		super();
	}

	public Vehicles(String owner, String phone,String email,String type, String brand, String model, String color, int manufactureYear,
			int doors, int seats, String transmissionType, String fuleType, String licenPlateNum,String license_date) {

		super(owner,phone,email);
		this.type = type;
		this.brand = brand;
		this.model = model;
		this.color = color;
		this.manufactureYear = manufactureYear;
		this.doors = doors;
		this.seats = seats;
		this.transmissionType = transmissionType;
		this.fuleType = fuleType;
		this.licenPlateNum = licenPlateNum;
		this.license_date = license_date;
	}

	public Vehicles(String vehicleID, String owner, String phone, String email,String type,String brand, String model, String color,
			int manufactureYear, int doors, int seats, String transmissionType, String fuleType, String licenPlateNum,String license_date) {
		
		super(vehicleID,owner,phone,email);
		
		this.type = type;
		this.brand = brand;
		this.model = model;
		this.color = color;
		this.manufactureYear = manufactureYear;
		this.doors = doors;
		this.seats = seats;
		this.transmissionType = transmissionType;
		this.fuleType = fuleType;
		this.licenPlateNum = licenPlateNum;
		this.license_date = license_date;
	}
	
	
	public String getType() {
		return type;
	}

	public String getLicense_date() {
		return license_date;
	}

	// getters
	public String getVehicleID() {
		return super.getId();
	}

	public String getOwner() {
		return super.getName();
	}

	public String getPhone() {
		return super.getPhone();
	}

	public String getEmail() {
		return super.getEmail();
	}
	
	public String getBrand() {
		return brand;
	}

	public String getModel() {
		return model;
	}

	public String getColor() {
		return color;
	}

	public int getManufactureYear() {
		return manufactureYear;
	}

	public int getDoors() {
		return doors;
	}

	public int getSeats() {
		return seats;
	}

	public String getTransmissionType() {
		return transmissionType;
	}

	public String getFuleType() {
		return fuleType;
	}

	public String getLicenPlateNum() {
		return licenPlateNum;
	}

	
	
	
	


	

}
