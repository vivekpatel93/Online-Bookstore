package com.user.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;


/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			 String UserName=request.getParameter("username");
			 String CompleteName=request.getParameter("name");
			 String ContactNumber=request.getParameter("contact_no");
			 String Email=request.getParameter("email");
			 String Password=request.getParameter("password");
//			 System.out.println(UserName+" "+CompleteName+" "+ContactNumber+" "+Email+" "+Password);
			 
			 User us=new User();
			 us.setUserName(UserName);
			 us.setCompleteName(CompleteName);
			 us.setContactNumber(ContactNumber);
			 us.setEmail(Email);
			 us.setPassword(Password);
			 
			 HttpSession sess=request.getSession();
			 
			 UserDAOImpl dao=new UserDAOImpl(DBConnect.getCon());
			 boolean f =dao.userRegister(us);
			 if(f) {
//				 System.out.println("Registration Successful......");
				 sess.setAttribute("SuccMsg","Registration Successful......");
				 response.sendRedirect("register.jsp");
			 }else {
//				 System.out.println("Something went wrong at server side.......");
				 sess.setAttribute("Failure","Something went wrong at server side");
				 response.sendRedirect("register.jsp");
			 }
			 
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}

}
