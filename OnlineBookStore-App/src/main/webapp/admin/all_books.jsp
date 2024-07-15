<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DAO.BooksDAOImpl" %>
    <%@ page import="com.DB.DBConnect" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.entity.BookDtls" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:All Book</title>
<%@include file="Common2.jsp" %>
</head>
<body style="font-family: Arial, sans-serif;">
<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello Admin</h3>
<table class="table table-striped ">
  <thead>
    <tr>
      <th scope="col">Book_id</th>
      <th scope="col">Book Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Categories</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
      
      </tr>
  </thead>
  <tbody>
  <%
  BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());
  List<BookDtls> list=dao.getAllBooks();
  for(BookDtls b:list){
  %>
  <tr>
      <td><%=b.getBook_id() %></td>
      <td><img src="../Books/<%=b.getPhoto() %>" style="width:50px; height:50px;"></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getBookCategory() %></td>
      <td><%=b.getStatus() %></td>
      <td>
      <a href="edit_books.jsp?id=<%=b.getBook_id()%>" class="btn btn-sm btn-primary">Edit</a>
      <a href="../delete_books?id=<%=b.getBook_id() %>" class="btn btn-sm btn-danger">Delete</a>
      </td>
    </tr>
  <%  
  }
  %>
    
  </tbody>
</table>
<div style="margin-top:160px;">
<%@include file="adminfooter.jsp" %>
</div>
</body>
</html>