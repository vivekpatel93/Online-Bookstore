package com.admin.servlet;

import java.io.IOException;

import com.DAO.BooksDAOImpl;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete_books")
public class DeleteBooksServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());
			boolean f=dao.deleteBooks(id);
			HttpSession sess=req.getSession();
			if(f) {
				sess.setAttribute("Deleted","Deletion Successful");
				resp.sendRedirect("admin/all_books.jsp");
			}else {
				sess.setAttribute("Failure","Deletion Successful");
				resp.sendRedirect("admin/all_books.jsp");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
}
