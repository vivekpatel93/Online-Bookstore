<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Setting</title>
<%@include file="Common_content/Common1.jsp" %>
<style type="text/css">
a{
text-decoration:none;
color:black;
}
a:hover{
text-decoration:none;
}

</style>
</head>
<body style="background-color:#dcdedc;">
<%@include file="Common_content/nav-bar.jsp" %>
	<div class="container">
	<h2 class="text-center mt-1">Hello! Users</h2>
	<div class="row p-5">
	<div class="col-md-6">
	<a href="contact_us.jsp">
	<div class="card">
	<div class="card-body text-center">
	<div class="text-primary">
	<i class="fa-regular fa-address-card fa-3x"></i>
	</div>
	<h3>Contact Us</h3>
	</div>
	</div>
	</a>
	</div>
	
	<div class="col-md-6">
                <a href="edit_Profile.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-primary">
                                <i class="fa-solid fa-user-pen fa-3x"></i>
                            </div>
                            <h3>Login & Security (Edit Profile)</h3>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="col-md-4 mt-3">
                <a href="user_Address.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-warning">
                                <i class="fa-solid fa-location-dot fa-3x"></i>
                            </div>
                            <h3>Your Address</h3>
                            <p>Edit Your Address</p>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="col-md-4 mt-3">
                <a href="user_Order.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-success">
                                <i class="fa-solid fa-box-open fa-3x"></i>
                            </div>
                            <h3>My Order</h3>
                            <p>Track your Order</p>
                        </div>
                    </div>
                </a>
            </div>
            
            <div class="col-md-4 mt-3">
                <a href="help.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-info">
                                <i class="fa-brands fa-hire-a-helper fa-3x"></i>
                            </div>
                            <h3>Help</h3>
                            <p>This is Help Center</p>
                        </div>
                    </div>
                </a>
            </div>
	
	</div>
	</div>	
<%@include file="Common_content/footer.jsp" %>
</body>
</html>