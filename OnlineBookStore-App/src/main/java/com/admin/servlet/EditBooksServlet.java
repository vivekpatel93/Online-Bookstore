package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import com.DAO.BooksDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/editbooks")
public class EditBooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String BookName=req.getParameter("bookname");
			String Author=req.getParameter("author");
			System.out.print(Author);
			String Price=req.getParameter("price");
			System.out.print(Price);
			String Status=req.getParameter("status");
			System.out.print(Status);
			BookDtls b=new BookDtls();
			b.setBook_id(id);
			b.setBookName(BookName);
			b.setAuthor(Author);
			b.setPrice(Price);
			b.setStatus(Status);
			
			BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());
			boolean f=dao.updateEditBooks(b);
			HttpSession sess=req.getSession();
			if(f) {
				sess.setAttribute("Successful","Update Successful");
				resp.sendRedirect("admin/all_books.jsp");
			}else {
				sess.setAttribute("Failure","Failure Occur");
				resp.sendRedirect("admin/all_books.jsp");
			}

		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
	}
	

}
