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


@WebServlet("/updateTenantServlet")
public class updateTenantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = TenantDBUtil.updateTenant(id, name, phone, email, username, password);
		
		if(isTrue==true) {
			
			List<Tenant> tenDetails = TenantDBUtil.getTenantDetails(id);
			request.setAttribute("tenDetails",tenDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("tenantAccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Tenant> tenDetails = TenantDBUtil.getTenantDetails(id);
			request.setAttribute("tenDetails",tenDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("tenantAccount.jsp");
			dis.forward(request, response);
		}
		
		
		
	}

}
