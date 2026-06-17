package CarRentalSystem;

public class BookingModel {

	private int id;
    private String name;
    private String email;
    private String phoneNo;
    private String address;
    private String driver;
    private String p_Location;
    private String d_Location;
    private String direction;
    private String d_Date;
    private String d_Time;

    public BookingModel(int id, String name, String email, String phoneNo, String address, String driver,
                         String p_Location, String d_Location, String direction, String d_Date, String d_Time) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phoneNo = phoneNo;
        this.address = address;
        this.driver = driver;
        this.p_Location = p_Location;
        this.d_Location = d_Location;
        this.direction = direction;
        this.d_Date = d_Date;
        this.d_Time = d_Time;
    }
    
    // Getters and Setters for all fields

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getP_Location() {
		return p_Location;
	}

	public void setP_Location(String p_Location) {
		this.p_Location = p_Location;
	}

	public String getD_Location() {
		return d_Location;
	}

	public void setD_Location(String d_Location) {
		this.d_Location = d_Location;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getD_Date() {
		return d_Date;
	}

	public void setD_Date(String d_Date) {
		this.d_Date = d_Date;
	}

	public String getD_Time() {
		return d_Time;
	}

	public void setD_Time(String d_Time) {
		this.d_Time = d_Time;
	}

}
