<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DAO.BooksDAOImpl" %>
    <%@ page import="com.DB.DBConnect" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.entity.BookDtls" %>
    <%@ page import="com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Purchasing Books</title>
<%@include file="Common_content/Common1.jsp" %>
<style>
.card:hover{
background-color:#c1cfdb;
}
</style>
</head>
<body style="background-color:#dcdedc;">
<%
		User us1=(User)session.getAttribute("userobj");
	%>
<%@include file="Common_content/nav-bar.jsp" %>
<div class="container-fluid">
<div class="row p-3">
	<%
	BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());  
	List<BookDtls> list=dao.getAllPurchasingBooks();
	for(BookDtls b:list){
	%>
	<div class="col-md-3">
		<div class="card mt-2">
		<div class="card-body text-center">
		<img src="Books/<%=b.getPhoto() %>" style="width:115px; height:170px;"class="img-thumblin">
		<p><%=b.getBookName()%></p>
		<p><%=b.getAuthor() %></p>
		<p>Category:<%=b.getBookCategory() %></p>
		<div class="row">
		<%
		if(us1==null){
		%>
		<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
		<% 
		}else{
		%>
		<a href="cart?Book_id=<%= b.getBook_id() %>&User_id=<%= us1.getUser_id() %>" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
		<%
		}
		%>
		<a href="" class="btn btn-success btn-sm ml-1">View data</a>
		<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %></a>
		</div>
		</div>
		</div>
	</div>
	<%
	}
	%>
</div>
</div>
</body>
</html>