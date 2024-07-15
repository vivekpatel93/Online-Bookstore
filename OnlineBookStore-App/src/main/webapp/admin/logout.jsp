<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Logout</title>
<%@include file="Common2.jsp" %>
</head>
<body>

<%
session.invalidate();
response.sendRedirect("../Front1.jsp");
%>
</body>
</html>