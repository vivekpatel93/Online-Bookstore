package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Cart;

public class CartDAOImpl implements CartDAO {
	private Connection con;
	
	public CartDAOImpl(Connection con) {
		super();
		this.con=con;
	}

	@Override
	public boolean addCart(Cart c) {
		boolean f=false;
		try {
			String sql="insert into cart_data(Cart_id,Book_id,User_id,BookName,Author,Price,TotalPrice)values(?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,c.getCart_id());
			ps.setInt(2,c.getBook_id());
			ps.setInt(3, c.getUser_id());
			ps.setString(4,c.getBookName());
			ps.setString(5,c.getAuthor());
			ps.setString(6,c.getPrice());
			ps.setString(7,c.getTotalPrice());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return f;
	}
	
	
}
