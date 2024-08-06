<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User:Edit Profile</title>
<%@include file="Common_content/Common1.jsp" %>
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
}
</style>
</head>
<body style="background-color:#f0f1f2;">

<%@include file="Common_content/nav-bar.jsp" %>
<section class="col-md-4 offset-md-4 p-4 mt-4">
<div class="register-form">
<h2 class="text-center text-primary">Edit Profile</h2>

<form action="" method="post" id="bookform">

                <div class="form-group">
                    <label for="username">Complete Name:</label>
                    <input type="text" name="bookname" placeholder="Name" required>
                </div>
                <div class="form-group">
                    <label for="name">Contact Number:</label>
                    <input type="number" name="author" placeholder="Enter 10 digit number" required>
                </div>
                
                <div class="form-group">
                    <label for="price">Email:</label>
                    <input type="email" name="author" placeholder="xyz@gmail.com" required>
                </div>
                
                <div class="form-group">
                    <label for="contact">Password:</label>
                    <input type="text" name="author" placeholder="W_xrevuyr$#99" required>
                </div>          
                <div class="form-group">
                    <button type="submit">Update   </button>
                </div>

            </form>
</div>
</section>
<%@include file="Common_content/footer.jsp" %>
</body>
</html>