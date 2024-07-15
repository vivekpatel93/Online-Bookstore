<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DAO.BooksDAOImpl" %>
    <%@ page import="com.DB.DBConnect" %>
        <%@ page import="com.entity.BookDtls" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Edit Books</title>
<%@include file="Common2.jsp" %>
<style>
.register-form{
	background: #fff;
    padding: 5px;
    border:1px solid black;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(178, 204, 241, 0.8);
    width: 90%;
    max-width: 400px;
    color:black;
}
.register-form h2 {
    margin-bottom: 10px;
    font-size: 18px;
    color:black;
    text-align: center;
}
.register-form .form-group {
    margin-bottom: 6px;
    display: flex;
    flex-direction: column;
}
.register-form .form-group label {
    display: block;
    margin-bottom: 6px;
}
 .form-group input {
    
    padding: 3px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 13px;
}
.form-group select {
    padding: 3px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 13px;
}
.register-form .form-group button {
    background: #444;
    color: #fff;
    border: none;
    padding: 3px 5px;
    border-radius: 4px;
    cursor: pointer;

}
.register-form .form-group button {
    width: auto; /* Make the button width auto */
    align-self: flex-start; /* Align button to the start (left) */
}ss
</style>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="navbar.jsp" %>

<section class="col-md-4 offset-md-4 mt-2">
<div class="register-form">
<h2>Edit Books</h2>
<%
int id=Integer.parseInt(request.getParameter("id"));
BooksDAOImpl dao=new BooksDAOImpl(DBConnect.getCon());
BookDtls b=dao.getBookById(id);
%>
<form action="../editbooks" method="post" id="bookform">
<input type="hidden" name="id" value="<%=b.getBook_id() %>">

                <div class="form-group">
                    <label for="username">Book Name:</label>
                    <input type="text" name="bookname" placeholder="Bookname" value="<%=b.getBookName() %>" required>
                </div>
                <div class="form-group">
                    <label for="name">Author:</label>
                    <input type="text" name="author" placeholder="FirstName SecondName" value="<%=b.getAuthor() %>" required>
                </div>
                
                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="text" name="price"placeholder="Rs..." value="<%=b.getPrice() %>" required>
                </div>
                
                <div class="form-group">
                    <label for="contact">Book Status:</label>
                    <select id="books" name="status" form="bookform">
                    	<option value="Others">--Select--</option>
  						<option value="Active">Active</option>
  						<option value="Inactive">Inactive</option>
  				</select>
                </div>          
                <div class="form-group">
                    <button type="submit">Update   </button>
                </div>

            </form>
</div>
</section>
<%@include file="adminfooter.jsp" %>
</body>
</html>