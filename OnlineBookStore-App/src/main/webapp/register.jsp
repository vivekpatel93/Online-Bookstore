<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Book : Register</title>
<link rel="stylesheet" href="register.css">
<%@include file="Common_content/Common1.jsp" %>
</head>
<body>
<%@include file="Common_content/nav-bar.jsp" %>
<section class="col-md-4 offset-md-4 mt-2">
        <div class="register-form">
            <h2>Register Here</h2>
            <form action="RegisterServlet" method="post">

                <div class="form-group">
                    <label for="username">User Name:</label>
                    <input type="text" name="username" placeholder="Username" required>
                </div>
                <div class="form-group">
                    <label for="name">Complete Name:</label>
                    <input type="text" name="name" placeholder="FirstName SecondName" required>
                </div>
                <div class="form-group">
                    <label for="contact">Contact Number:</label>
                    <input type="text" name="contact_no" placeholder="Enter 10 digit number" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" name="email"placeholder="xyz@gmail.com" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" name="password" placeholder="Xasf@#98" requirerd>
                </div>
                <div class="form-group">
                    <button type="submit">Register</button>
                </div>

            </form>
        </div>
    </section>
    <%@include file="Common_content/footer.jsp" %>
</body>
</html>