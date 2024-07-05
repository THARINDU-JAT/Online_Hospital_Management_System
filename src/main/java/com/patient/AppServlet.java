package com.patient;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AppServlet")
public class AppServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//fetch data from Appointment page
		
		 String pID = request.getParameter("pid");
		 String patientName = request.getParameter("pn");
		 String age = request.getParameter("age");
		 String gender = request.getParameter("gn");
		 String add = request.getParameter("add");
		 String phone = request.getParameter("Ph");
		 String dise  = request.getParameter("dise");
		 String dName  = request.getParameter("dn");
		 String spec  = request.getParameter("sp");
		 String consultFees  = request.getParameter("con");
		 String appDate  = request.getParameter("apD");
		 String appTime  = request.getParameter("apT");
		
		 
		 boolean isTrue;
		 
		 isTrue = PatientDBUtil.insertPatientA(pID, patientName, age, gender, add, phone, dise, dName, spec, consultFees, appDate, appTime);
		 
		
		 
		 if(isTrue == true) {
			 RequestDispatcher dis = request.getRequestDispatcher("apSuccess.jsp");
			 dis.forward(request, response);
		 }
	}

}
