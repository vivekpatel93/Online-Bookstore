package com.DAO;
import java.sql.Connection;

import com.entity.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAOImpl implements UserDAO {
	private Connection con;
	
	public UserDAOImpl(Connection con) {
		super();
		this.con=con;
	}
	public boolean userRegister(User us) {
		boolean f=false;
		
		try {
			PreparedStatement ps=con.prepareStatement("insert into user(UserName,CompleteName,ContactNumber,Email,Password)values(?,?,?,?,?)");
			ps.setString(1,us.getUserName());
			ps.setString(2,us.getCompleteName());
			ps.setString(3,us.getContactNumber());
			ps.setString(4,us.getEmail());
			ps.setString(5,us.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return f;
	}
	@Override
	public User login(String UserName, String Password) {
		User us=new User();
		try {
			PreparedStatement ps=con.prepareStatement("select*from user where UserName=? and Password=?");
			ps.setString(1, UserName);
			ps.setString(2, Password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				us=new User();
				us.setUser_id(rs.getInt(1));
				us.setUserName(rs.getString(2));
				us.setCompleteName(rs.getString(3));
				us.setContactNumber(rs.getString(4));
				us.setEmail(rs.getString(5));
				us.setPassword(rs.getString(6));
				us.setAddress(rs.getString(7));
				us.setLandmark(rs.getString(8));
				us.setCity(rs.getString(9));
				us.setState(rs.getString(10));
				us.setPinCode(rs.getInt(11));
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return us;
	}
	
}
