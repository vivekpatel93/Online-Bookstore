package com.DAO;
import com.entity.User;

public interface UserDAO {
	public boolean userRegister(User us);
	
	public User login(String UserName,String Password);
		

}
