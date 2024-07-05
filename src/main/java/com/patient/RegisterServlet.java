package com.patient;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//fetch data from Registration page
		
		 String nic = request.getParameter("nic");
		 String userName = request.getParameter("un");
		 String password = request.getParameter("pws");
		 String cPassword = request.getParameter("cpws");
		 String email = request.getParameter("uemail");
		 String gender = request.getParameter("gn");
		 String address  = request.getParameter("add");
		 String country  = request.getParameter("co");
		 String phone  = request.getParameter("cn");
		 String district  = request.getParameter("dis");
		 String regDate  = request.getParameter("red");
		 
		 boolean isTrue;
		 
		 isTrue =  PatientDBUtil.insertPatient(nic, userName, password, cPassword, email, gender, address, country, phone, district, regDate);
		 
		 if(isTrue == true) {
			 RequestDispatcher dis = request.getRequestDispatcher("resuccess.jsp");
			 dis.forward(request, response);
		 }
	}

}
