package com.tenant;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenant.Tenant;
import com.tenant.TenantDBUtil;


@WebServlet("/DeleteTenantServlet")
public class DeleteTenantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
String id = request.getParameter("cusid");
		
		boolean isTrue;
		
		isTrue = TenantDBUtil.deleteTenant(id);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("TenantRegister.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			
			List<Tenant> tenDetails = TenantDBUtil.getTenantDetails(id);
			
			request.setAttribute("tenDetails", tenDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("tenantAccount.jsp");
			dispatcher.forward(request, response);
			
			
		}
		
		
		
	}

}
