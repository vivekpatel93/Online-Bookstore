<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Add Books</title>
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
<h2>Add Books</h2>
<form action="../add_books" method="post" enctype="multipart/form-data" id="bookform">
				<div class="form-group">
                    <label for="Book_id">Book_id:</label>
                    <input type="number" name="bookid" placeholder="BooK_id" required>
                </div>
                <div class="form-group">
                    <label for="username">Book Name:</label>
                    <input type="text" name="bookname" placeholder="Bookname" required>
                </div>
                <div class="form-group">
                    <label for="name">Author:</label>
                    <input type="text" name="author" placeholder="FirstName SecondName" required>
                </div>
                
                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="text" name="price"placeholder="Rs..." required>
                </div>
                
                <div class="form-group">
                    <label for="contact">Category:</label>
                    <select id="books" name="bookcategory" form="bookform">
                    	<option value="Others">--Select--</option>
  						<option value="E_book">E_book</option>
  						<option value="Purchasing Book">Purchasing Book</option>
  						<option value="Notes">Notes</option>
  				</select>
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
                    <label for="file">Picture:</label>
                    <input type="file" name="bimg" class="bookform-file" id="bookform-file1" >
                </div>
                <div class="form-group">
                    <button type="submit">Add Books</button>
                </div>

            </form>
</div>
</section>
<%@include file="adminfooter.jsp" %>
</body>
</html>