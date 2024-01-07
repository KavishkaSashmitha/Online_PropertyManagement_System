package com.tenant;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenant.Tenant;
import com.tenant.TenantDBUtil;
import com.tenant.Tenant;
import com.tenant.TenantDBUtil;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isTrue;
		
		isTrue = TenantDBUtil.validate(username,password);
		
		
		
		if(isTrue  == true) {
			
			
			List<Tenant> tenDetails = TenantDBUtil.getTenant(username);
			
			request.setAttribute("tenDetails",tenDetails);
			
			
			
			
			RequestDispatcher dis =request.getRequestDispatcher("tenantAccount.jsp");
			
			dis.forward(request, response);
		
		
		}
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='TenantLogin.jsp'");
			out.println("</script>");
			
		}
		
		
		
		
	}

}
