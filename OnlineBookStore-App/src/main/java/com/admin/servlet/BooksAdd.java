package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import com.DAO.BooksDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int Book_id=Integer.parseInt(req.getParameter("bookid"));
			String BookName=req.getParameter("bookname");
			String Author=req.getParameter("author");
			String Price=req.getParameter("price");
			String BookCategory=req.getParameter("bookcategory");
			String Status=req.getParameter("status");
			Part part=req.getPart("bimg");
			String FileName=part.getSubmittedFileName();
			
			BookDtls b=new BookDtls(Book_id,BookName,Author,Price,BookCategory,Status,FileName,"admin");
			BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());
			
			boolean f=dao.addBooks(b);
			HttpSession sess=req.getSession();
			if(f) {
				String path=getServletContext().getRealPath("")+"Books";
				File file=new File(path);
				part.write(path + File.separator + FileName);
				
				sess.setAttribute("Successful","Books Added Successfully");
				resp.sendRedirect("admin/add_books.jsp");
			}else {
				sess.setAttribute("Failure","Books Are not Added");
				resp.sendRedirect("admin/add_books.jsp");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
}
