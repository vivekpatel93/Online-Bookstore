package com.user.servlet;

import java.io.IOException;

import com.DAO.BooksDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.entity.Cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart")
public class cartServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			System.out.print(" Hello CART ");
			int Book_id=Integer.parseInt(req.getParameter("Book_id"));
			System.out.println();
			System.out.println(Book_id);
			
			int User_id=Integer.parseInt(req.getParameter("User_id"));
			 
			System.out.println();
			
			System.out.println(User_id);
			
			BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());
			BookDtls b=dao.getBookById(Book_id);
			
			Cart c=new Cart();
			c.setBook_id(Book_id);
			c.setUser_id(User_id);
			c.setBookName(b.getBookName());
			c.setAuthor(b.getAuthor());
			c.setPrice(Double.parseDouble((b.getPrice())));
			c.setTotalPrice(Double.parseDouble(b.getPrice()));
			
			CartDAOImpl dao2=new CartDAOImpl(DBConnect.getCon());
			boolean f=dao2.addCart(c);
			
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("addCart","Book Added to cart successfully");
				resp.sendRedirect("all_PurchasingBooks.jsp");
				
			}else {
				session.setAttribute("failed","Somthing Wnt Wrong ....");
				resp.sendRedirect("all_PurchasingBooks.jsp");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	
}
