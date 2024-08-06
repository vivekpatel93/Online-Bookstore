package com.user.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
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
			String Password=request.getParameter("password");
//			System.out.println(UserName+" "+Password);
			
			HttpSession session=request.getSession();
			UserDAOImpl dao=new UserDAOImpl(DBConnect.getCon());
			 
			if("admin".equals(UserName)&&"@admin123".equals(Password)) {
				User us = new User();
				session.setAttribute("userobj",us);
				response.sendRedirect("admin/home.jsp");
			}else {
				User us=dao.login(UserName, Password);
				
				if(us!=null) {
					
					session.setAttribute("userobj",us);
					response.sendRedirect("Front1.jsp");
					
					
				}else {
					
					session.setAttribute("FailureMsg","Email and Password invalid");
					response.sendRedirect("login.jsp");
					
					}
				
			}

			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}

}
