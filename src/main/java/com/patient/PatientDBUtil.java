package com.patient;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class PatientDBUtil {


  
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stm = null;
	private static ResultSet rs = null;
	
	
	//validation
	public static boolean validate(String userName , String password) {
		
		try {
		    con = connectionDB.getConnection();
    		stm = con.createStatement();
    		String sql = "select * from patient_info where userName  = '"+userName+"' and Password = '"+password+"'";
			rs = stm.executeQuery(sql);
			
			if(rs.next()) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return isSuccess;
	}
	

public static List<PatientInfo> getPatientInfo(String userName) {
		
		List<PatientInfo> patient = new ArrayList<>();
		
		try {
			con = connectionDB.getConnection();
			stm = con.createStatement();
			String sql = "select * from patient_info where userName='"+userName+"'";
            rs = stm.executeQuery(sql);

			
		
			
			while (rs.next()) {
				String nic   = rs.getString(1);
				String userName1 = rs.getString(2);
				String password = rs.getString(3);
				String cPassword  = rs.getString(4);
				String email  = rs.getString(5);
				String gender = rs.getString(6);
				String address = rs.getString(7);
				String country = rs.getString(8);
				String phone  = rs.getString(9);
				String district = rs.getString(11);
				String regDate  = rs.getString(12);

				
				
				PatientInfo pat = new PatientInfo(nic, userName1, password, cPassword, email, gender, address,
					country, phone, district, regDate);
				patient.add(pat);			}
			
		} catch (Exception e) {
			
		}
		
		return patient;	
	}

//insertPartienIfo
	public static boolean insertPatient(String nic, String userName, String password, String cPassword, String email, String gender, String address,
			String country, String phone, String district, String regDate) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		con = connectionDB.getConnection();
	    		stm = con.createStatement();
	    		String sql = "insert into patient_info values ('"+nic+"','"+userName+"','"+password+"','"+cPassword+"','"+email+"','"+gender+"', '"+address+"', '"+country+"', '"+phone+"', '"+district+"', '"+regDate+"')";
	            int rs = stm.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	}
	
	
	//insert appointmentInfo
	public static boolean insertPatientA(String pID, String patientName, String age, String gender, String add, String phone, String dise,
			String dName, String spec, String consultFees, String appDate, String appTime) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		con = connectionDB.getConnection();
	    		stm = con.createStatement();
	    		String sql = "insert into patient_appointment_details values ('"+pID+"','"+patientName+"','"+age+"','"+gender+"','"+phone+"','"+add+"', '"+dise+"', '"+dName+"', '"+spec+"', '"+consultFees+"', '"+appDate+"', '"+appTime+"')";
	            int rs = stm.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	}
	
	
	
	public static boolean deleteP(String nic) {

		int no = Integer.parseInt(nic);
		
		try {
			con = connectionDB.getConnection();
    		stm = con.createStatement();
    		String sql = "delete from patient_info where nic='"+no+"'";
			int rs = stm.executeUpdate(sql);
			
			if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
		return isSuccess;
		
		
	}
	
	
}

