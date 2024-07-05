package com.patient;

public class PatientInfo {
	
	private String nic;
	private String userName;
	private String password;
	private String cPassword;
	private String email;
	private String gender;
	private String address;
	private String country;
	private String phone;
	private String district;
	private String regDate;
	
	public PatientInfo(String nic, String userName, String password, String cPassword, String email, String gender, String address,
			String country, String phone, String district, String regDate) {
		this.nic = nic;
		this.userName = userName;
		this.password = password;
		this.cPassword = cPassword;
		this.email = email;
		this.gender = gender;
		this.address = address;
		this.country = country;
		this.phone = phone;
		this.district = district;
		this.regDate = regDate;
	}

	public String getNic() {
		return nic;
	}

	public String getUserName() {
		return userName;
	}


	public String getPassword() {
		return password;
	}
	
	public String getcPassword() {
		return cPassword;
	}

	public String getEmail() {
		return email;
	}


	public String getGender() {
		return gender;
	}


	public String getAddress() {
		return address;
	}


	public String getCountry() {
		return country;
	}


	public String getPhone() {
		return phone;
	}


	public String getDistrict() {
		return district;
	}



	public String getRegDate() {
		return regDate;
	}

	
}
