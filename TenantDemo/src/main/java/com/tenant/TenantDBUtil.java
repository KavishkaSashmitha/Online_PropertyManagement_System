package com.tenant;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.tenant.Tenant;
import com.tenant.Tenant;
import com.tenant.DBConnect;

public class TenantDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	
public static boolean validate(String userName,String password){
		
		
		
		
		
		
		
		// validate part
		
		try {
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from customer where username='"+userName+"' and password='"+password+"'";
			
			rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return isSuccess;
		
	}


public static List<Tenant> getTenant(String username){
	
	ArrayList<Tenant> ten = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "select * from customer where username='"+username+"'";
		
		rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String userU = rs.getString(5);
			String passU = rs.getString(6);
			
			Tenant t = new Tenant(id,name,email,phone,userU,passU);
			
			ten.add(t);
		}
		
		
		
		
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	
	
	
	
	return ten;
}








	public static boolean insertTenant(String name ,String email,String phone,String username,String password) {
		boolean isSuccess = false;
		
		//create data base connection
		
				
				
				try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					
					String sql = "insert into customer values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
					int rs = stmt.executeUpdate(sql);
					
					if(rs>0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
					
					
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}
		
		
		return isSuccess;
	}
	
	public static boolean updateTenant(String id ,String name ,String phone ,String email,String username,String password) {
		boolean isSuccess=false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	
	public static List<Tenant> getTenantDetails(String id){
		
		int convertedID = Integer.parseInt(id);
		
		ArrayList<Tenant> ten = new ArrayList<>();
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="select * from customer where id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int Id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Tenant t = new Tenant(Id,name,email,phone,username,password);
				ten.add(t);
				
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return ten;
	}
	public static boolean deleteTenant(String id) {
		
		boolean isSuccess = false;
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from customer where id ='"+convId+"'";
			
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess= true;
			}
			else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
			
			
		}
		
		return isSuccess;
	}


}
