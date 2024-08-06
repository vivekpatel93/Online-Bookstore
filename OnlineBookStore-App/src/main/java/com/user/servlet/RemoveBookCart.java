package com.user.servlet;

import java.io.IOException;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/remove_book")
public class RemoveBookCart extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int User_id=Integer.parseInt(req.getParameter("User_id"));
		int Book_id=Integer.parseInt(req.getParameter("Book_id"));
		CartDAOImpl dao=new CartDAOImpl(DBConnect.getCon());
		boolean f=dao.deleteBook(Book_id,User_id);
		HttpSession session=req.getSession();
		
		if(f) {
			session.setAttribute("SuccMsg","Book Successfully removed from Cart");
			resp.sendRedirect("checkout.jsp");
		}else {
			session.setAttribute("Failure","Some Errors occur...");
			resp.sendRedirect("checkout.jsp");
		}
	}
	
}
