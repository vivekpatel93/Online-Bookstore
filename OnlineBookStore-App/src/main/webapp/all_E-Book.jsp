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
<title>All E-Books</title>
<%@include file="Common_content/Common1.jsp" %>
<style>
.card:hover{
background-color:#c1cfdb;
}
</style>
</head>
<body style="background-color:#dcdedc;">
<%@include file="Common_content/nav-bar.jsp" %>
<div class="container-fluid">
<div class="row p-3">
	<%
	BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());  
	List<BookDtls> list=dao.getAllE_Books();
	for(BookDtls b:list){
	%>
	<div class="col-md-3">
	<div class="card mt-2">
		<div class="card-body text-center">
		<img src="Books/<%=b.getPhoto() %>" style="width:115px; height:170px;"class="img-thumblin">
		<p><%=b.getBookName() %></p>
		<p><%=b.getAuthor() %></p>
		<p>Categorie:<%=b.getBookCategory() %></p>
		<div class="row">
		<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
		<a href="" class="btn btn-success btn-sm ml-1">Download</a>
		<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
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