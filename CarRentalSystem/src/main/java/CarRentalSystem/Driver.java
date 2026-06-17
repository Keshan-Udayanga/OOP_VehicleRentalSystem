package CarRentalSystem;

public class Driver extends User{

	private int id;
	private String address;
	private String licenseNo;
	private String licenseExp;
	private String vType;
	private String uName;
	private String pass;
	
	
	
	public Driver(int id, String dName, String phone, String address, String email, String licenseNo, String licenseExp,
			String vType, String uName, String pass) {

		super(licenseNo,dName,phone,email);
		this.id = id;
		this.licenseNo = licenseNo;
		this.licenseExp = licenseExp;
		this.address=address;
		this.vType = vType;
		this.uName = uName;
		this.pass = pass;
	}
	public int getPID() {
		return id;
	}
	
	public String getId() {
		return super.getId();
	}
	public String getdName() {
		return super.getName();
	}

	public String getPhone() {
		return super.getPhone();
	}

	public String getAddress() {
		return address;
	}
	public String getEmail() {
		return super.getEmail();
	}

	public String getLicenseNo() {
		return licenseNo;
	}

	public String getLicenseExp() {
		return licenseExp;
	}

	public String getvType() {
		return vType;
	}

	public String getuName() {
		return uName;
	}

	public String getPass() {
		return pass;
	}	
	
}
