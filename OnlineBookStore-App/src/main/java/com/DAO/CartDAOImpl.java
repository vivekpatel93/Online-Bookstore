package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;
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
			ps.setInt(3,c.getUser_id());
			ps.setString(4,c.getBookName());
			ps.setString(5,c.getAuthor());
			ps.setDouble(6,c.getPrice());
			ps.setDouble(7,c.getTotalPrice());
			
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
	public List<Cart> getBookByUser(int User_id) {
		List<Cart> list=new ArrayList<Cart>();
		Cart c=null;
		double TotalPrice=0;
		try {
			String sql="select * from cart_data where User_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, User_id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				c=new Cart();
				c.setCart_id(rs.getInt(1));
				c.setBook_id(rs.getInt(2));
				c.setUser_id(rs.getInt(3));
				c.setBookName(rs.getString(4));
				c.setAuthor(rs.getString(5));
				c.setPrice(rs.getDouble(6));
				
				TotalPrice=TotalPrice+rs.getDouble(7);
				c.setTotalPrice(TotalPrice);
				
				list.add(c);
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean deleteBook(int Book_id,int User_id) {
		boolean f=false;
		
		try {
			String sql="delete from cart_data where Book_id=? and User_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, Book_id);
			ps.setInt(2, User_id);
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
