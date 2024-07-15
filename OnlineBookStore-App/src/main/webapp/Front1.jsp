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
<title>Online BookStore</title>
<%@include file="Common_content/Common1.jsp" %>
<style>  
.back-img{
background:url("img/B4.png");
height:60vh;
width:100%;
background-repeat:no-repeat;
background-size:cover;
}
.card:hover{
background-color:#c1cfdb;
}
</style>
</head>
<body style="background-color:#dcdedc;">
	<%
		User us=(User)session.getAttribute("us");
		%>
	<%@include file="Common_content/nav-bar.jsp" %>
	<div class="container-fluid back-img">
	<h2>E-Bookstore Management System</h2>
	</div>
	
	<div class="container-fluid">
	<h3 class="text-center mt-2">E-Book</h3>
	<div class="row p-3">
	<%
	BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());  
	List<BookDtls> list=dao.getE_Book();
	for(BookDtls b:list){
	%>
	<div class="col-md-3">
	<div class="card ">
		<div class="card-body text-center">
		<img src="Books/<%=b.getPhoto() %>" style="width:160px; height:200px;"class="img-thumblin">
		<p><%=b.getBookName() %></p>
		<p><%=b.getAuthor() %></p>
		<p>Category:<%=b.getBookCategory() %></p>
		<div class="row">
		<a href="book_Details.jsp?Book_id=<%=b.getBook_id()%>" class="btn btn-danger btn-sm ml-1">View Details</a>
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
	<div class="text-center mt-3">
	<a href="all_E-Book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
	</div>
	</div>
	<hr>
	<!-- second Section -->
	<div class="container-fluid">
	<h3 class="text-center mt-2">Purchasing Book</h3>
	<div class="row p-3">
	<%
	BooksDAOImpl dao1=new BooksDAOImpl(DBConnect.getCon());  
	List<BookDtls> list1=dao1.getPurchasingBook();
	for(BookDtls b:list1){
	%>
	<div class="col-md-3">
		<div class="card">
		<div class="card-body text-center">
		<img src="Books/<%=b.getPhoto() %>" style="width:150px; height:200px;"class="img-thumblin">
		<p><%=b.getBookName()%></p>
		<p><%=b.getAuthor() %></p>
		<p>Category:<%=b.getBookCategory() %></p>
		<div class="row">
		
		<%
		if(us==null){
		%>
		<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
		<% 
		}else{
		%>
		<a href="cart?Book_id=<%=b.getBook_id() %>&& User_id=<%=us.getUser_id()%>" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
		<%
		}
		%>
		<a href="book_Details.jsp?Book_id=<%=b.getBook_id() %>" class="btn btn-success btn-sm ml-1">View Details</a>
		<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %></a>
		</div>
		</div>
		</div>
	</div>
	<%
	}
	%>
	
		</div>
	<div class="text-center mt-3">
	<a href="all_PurchasingBooks.jsp" class="btn btn-danger btn-sm text-white">View All</a>
	</div>
	</div>
	<hr>
	<!-- third section -->
	<div class="container-fluid">
	<h3 class="text-center mt-2">Notes</h3>
	<div class="row p-3">
	<%
	BooksDAOImpl dao2=new BooksDAOImpl(DBConnect.getCon());  
	List<BookDtls> list2=dao2.getNotes();
	for(BookDtls b:list2){
	%>
	<div class="col-md-3">
		<div class="card">
		<div class="card-body text-center">
		<img src="Books/<%=b.getPhoto() %>" style="width:150px; height:200px;"class="img-thumblin">
		<p><%=b.getBookName() %></p>
		<p><%=b.getAuthor() %></p>
		<p>Category:<%=b.getBookCategory() %></p>
		<div class="row">
		<a href="" class="btn btn-success btn-sm ml-1">Download</a>
		<a href="book_Details.jsp?Book_id=<%=b.getBook_id()%>" class="btn btn-success btn-sm ml-1">View Details</a>
		<a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice() %></a>
		</div>
		</div>
		</div>
	</div>
		<%
	     }
	     %>
	</div>
	<div class="text-center mt-3">
	<a href="all_Notes.jsp" class="btn btn-danger btn-sm text-white">View All</a>
	</div>
	
	</div>
	<hr>
	<%@include file="Common_content/footer.jsp" %>
</body>
</html>