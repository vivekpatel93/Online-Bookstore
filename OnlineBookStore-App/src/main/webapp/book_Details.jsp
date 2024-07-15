<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
    <%@ page import="com.DAO.BooksDAOImpl" %>
    <%@ page import="com.DB.DBConnect" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.entity.BookDtls" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
<%@include file="Common_content/Common1.jsp" %>
</head>
<body style="background-color:#dcdedc;">
<%@include file="Common_content/nav-bar.jsp" %>
<%
int Book_id=Integer.parseInt(request.getParameter("Book_id"));
BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());
BookDtls b=dao.getBookById(Book_id);
%>
<div class="container p-3">
<div class="row">
<div class="col-md-6 text-center p-5 border bg-white">
<img src="Books/<%=b.getPhoto() %>" style="width:125px; height:170px;"><br>
<h4 class="mt-2">Book Name: <span class="text-success"><%=b.getBookName() %></span></h4>
<h4>Author: <span class="text-success"><%=b.getAuthor() %></span></h4>
<h4>Category: <span class="text-success"><%=b.getBookCategory() %></span></h4>
</div>
<div class="col-md-6 text-center p-5 border bg-white">
<h4>Book Name: <span class="text-success"><%=b.getBookName() %></span></h4>
<%
if("E_book".equals(b.getBookCategory())||"Notes".equals(b.getBookCategory())){
%>	
<h5><i class="fa-solid fa-envelope"></i> Email:<%=b.getEmail() %></h5>
<%	
}
%>
<div class="row">
<div class="col-mod-4 text-danger text-center p-2 ml-3">
<i class="fa-regular fa-money-bill-1 fa-2x"></i>
<P>Cash On Delivery</P>
</div>

<div class="col-mod-4 text-danger text-center p-2 ml-4">
<i class="fa-solid fa-rotate-left fa-2x"></i>
<p>Return Available</p>
</div>

<div class="col-mod-4 text-danger text-center p-2 ml-3">
<i class="fa-solid fa-truck-fast fa-2x"></i>
<p>Free And Fast Shipping</p>
</div>

</div>
<%
if("E_book".equals(b.getBookCategory())||"Notes".equals(b.getBookCategory())){
%>	
<div class="text-center p-3">
<a href="Front1.jsp" class="btn btn-primary"><i class="fa-solid fa-cart-plus"></i> Continue Shopping</a>
<a href="" class="btn btn-danger ml-3"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice() %></a>
</div>
<%	
}else{
%>
<div class="text-center p-3">
<a href="" class="btn btn-primary"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
<a href="" class="btn btn-danger ml-3"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice() %></a>
</div>
<%
}
%>
</div>
</div>
</div>
</body>
</html>