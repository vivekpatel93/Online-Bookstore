package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;

public class BooksDAOImpl implements BooksDAO {
	private Connection con;
	
	public BooksDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	public boolean addBooks(BookDtls b) {
		boolean f=false;
		try {
			PreparedStatement ps=con.prepareStatement("insert into book_data(Book_id,BookName,Author,Price,BookCategory,Status,Photo,Email)values(?,?,?,?,?,?,?,?)");
			ps.setInt(1,b.getBook_id());
			ps.setString(2,b.getBookName());
			ps.setString(3,b.getAuthor());
			ps.setString(4,b.getPrice());
			ps.setString(5,b.getBookCategory());
			ps.setString(6,b.getStatus());
			ps.setString(7,b.getPhoto());
			ps.setString(8,b.getEmail());
			int r=ps.executeUpdate();
			if(r==1) {
				f=true;
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return f;
	}

	@Override
	public List<BookDtls> getAllBooks() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select*from book_data order by Book_id asc";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				b=new BookDtls();
				b.setBook_id(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return list;
	}

	@Override
	public BookDtls getBookById(int id) {
		BookDtls b=null;
		try {
			String sql="select*from book_data where Book_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls();
				b.setBook_id(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhoto(rs.getString(7));
				b.setEmail(rs.getString(8));
			
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}

	@Override
	public boolean updateEditBooks(BookDtls b) {
		boolean f=false;
		try {
			String sql="update book_data set BookName=?,Author=?,Price=?,Status=? where Book_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,b.getBookName());
			ps.setString(2,b.getAuthor());
			ps.setString(3,b.getPrice());
			ps.setString(4,b.getStatus());
			ps.setInt(5,b.getBook_id());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true; 
			}
		}catch(Exception ex) {
			ex.printStackTrace();
			System.out.println("Ex  "+ex);
		}
		return f;
	}

	@Override
	public boolean deleteBooks(int id) {
		boolean f=false;
		try {
			String sql="delete from book_data where Book_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
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
	public List<BookDtls> getE_Book() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select*from book_data where BookCategory=? and Status=? order by Book_id desc";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,"E_book");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next()&&i<=4) {
				b=new BookDtls();
				b.setBook_id(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
			}catch(Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	@Override
	public List<BookDtls> getPurchasingBook() {
		   List<BookDtls> list1=new ArrayList<BookDtls>();
		   BookDtls b=null;
		   try {
			   String sql="select*from book_data where BookCategory=? and Status=? order by Book_id desc";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,"Purchasing Book");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
				int i=1;
				while(rs.next()&&i<=4) {
					b=new BookDtls();
					b.setBook_id(rs.getInt(1));
					b.setBookName(rs.getString(2));
					b.setAuthor(rs.getString(3));
					b.setPrice(rs.getString(4));
					b.setBookCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhoto(rs.getString(7));
					b.setEmail(rs.getString(8));
					list1.add(b);
					i++;
				}
		   }catch(Exception ex) {
			   ex.printStackTrace();
		   }
			return list1;
	}

	@Override
	public List<BookDtls> getNotes() {
		   List<BookDtls> list2=new ArrayList<BookDtls>();
		   BookDtls b=null;
		   try {
			   String sql="select*from book_data where BookCategory=? and Status=? order by Book_id desc";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,"Notes");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
				int i=1;
				while(rs.next()&&i<=4) {
					b=new BookDtls();
					b.setBook_id(rs.getInt(1));
					b.setBookName(rs.getString(2));
					b.setAuthor(rs.getString(3));
					b.setPrice(rs.getString(4));
					b.setBookCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhoto(rs.getString(7));
					b.setEmail(rs.getString(8));
					list2.add(b);
					i++;
				}
		   }catch(Exception ex) {
			   ex.printStackTrace();
		   }
		return list2;
	}

	@Override
	public List<BookDtls> getAllE_Books() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		   BookDtls b=null;
		   try {
			   String sql="select*from book_data where BookCategory=? and Status=? order by Book_id desc";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,"E_Book");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					b=new BookDtls();
					b.setBook_id(rs.getInt(1));
					b.setBookName(rs.getString(2));
					b.setAuthor(rs.getString(3));
					b.setPrice(rs.getString(4));
					b.setBookCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhoto(rs.getString(7));
					b.setEmail(rs.getString(8));
					list.add(b);
				}
		   }catch(Exception ex) {
			   ex.printStackTrace();
		   }
		return list;
	}

	@Override
	public List<BookDtls> getAllPurchasingBooks() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		   BookDtls b=null;
		   try {
			   String sql="select*from book_data where BookCategory=? and Status=? order by Book_id desc";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,"Purchasing Book");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					b=new BookDtls();
					b.setBook_id(rs.getInt(1));
					b.setBookName(rs.getString(2));
					b.setAuthor(rs.getString(3));
					b.setPrice(rs.getString(4));
					b.setBookCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhoto(rs.getString(7));
					b.setEmail(rs.getString(8));
					list.add(b);
				}
		   }catch(Exception ex) {
			   ex.printStackTrace();
		   }
		return list;
	}

	@Override
	public List<BookDtls> getAllNotes() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		   BookDtls b=null;
		   try {
			   String sql="select*from book_data where BookCategory=? and Status=? order by Book_id desc";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,"Notes");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					b=new BookDtls();
					b.setBook_id(rs.getInt(1));
					b.setBookName(rs.getString(2));
					b.setAuthor(rs.getString(3));
					b.setPrice(rs.getString(4));
					b.setBookCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhoto(rs.getString(7));
					b.setEmail(rs.getString(8));
					list.add(b);
				}
		   }catch(Exception ex) {
			   ex.printStackTrace();
		   }
		return list;
	}
	
	
}
