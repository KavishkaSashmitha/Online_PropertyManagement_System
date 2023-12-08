package com.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String nic = request.getParameter("nic");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String proffesion = request.getParameter("proffesion");
		String contact = request.getParameter("contact");
		String date = request.getParameter("date");
		String email = request.getParameter("email");
		
		
		
		
		
		boolean isTrue;
		
		isTrue = BookingDBUtill.updateBooking(id, nic,name,address,proffesion, date, contact, email);
		
		if(isTrue == true) {
			RequestDispatcher dis =request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis2 =request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
