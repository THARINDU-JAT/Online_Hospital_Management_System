package com.patient;

public class PatientApp {
	
	 String pID;
	 String patientName ;
	 String age;
	 String gender; 
	 String add; 
	 String phone; 
	 String dise;  
	 String dName; 
	 String spec;
	 String consultFees; 
	 String appDate;
	 String appTime ;
	public PatientApp(String pID, String patientName, String age, String gender, String add, String phone, String dise,
			String dName, String spec, String consultFees, String appDate, String appTime) {
		
		this.pID = pID;
		this.patientName = patientName;
		this.age = age;
		this.gender = gender;
		this.add = add;
		this.phone = phone;
		this.dise = dise;
		this.dName = dName;
		this.spec = spec;
		this.consultFees = consultFees;
		this.appDate = appDate;
		this.appTime = appTime;
	}
	public String getpID() {
		return pID;
	}
	
	public String getPatientName() {
		return patientName;
	}
	
	public String getAge() {
		return age;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getAdd() {
		return add;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getDise() {
		return dise;
	}
	
	public String getdName() {
		return dName;
	}
	
	public String getSpec() {
		return spec;
	}
	
	public String getConsultFees() {
		return consultFees;
	}

	public String getAppDate() {
		return appDate;
	}
	
	public String getAppTime() {
		return appTime;
	}
	
	 
	 

}
