<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Book:Login</title>
<link rel="stylesheet" href="login.css">
<%@include file="Common_content/Common1.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="Common_content/nav-bar.jsp" %>
<section class="col-md-4 offset-md-4 mt-3">
  	<div class="main-cnt">
                <h1>Login-</h1>
				<form action="LoginServlet" method="post">
                    <div class="user-info">
                        <label class="form-label">User Name- </label>
                        <input type="text" name="username" placeholder="Username" required>
                    </div>
                    <div class="user-info">
                        <label class="form-label">Password - </label>
                        <input type="password" name="password" placeholder="Password" required>
                    </div>
                    <button type="submit" class="btn"><i class="fa-solid fa-right-to-bracket"></i> Login</button>
                </form>
                <hr class="partation">
                <p class="text"><a href="register.jsp"><i class="fa-solid fa-user-plus"></i> Create Account</a></p>
                
            </div>      
    </section>
      <%@include file="Common_content/footer.jsp" %>
</body>
</html>