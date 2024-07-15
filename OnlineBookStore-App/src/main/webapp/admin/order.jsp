<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Order</title>
<%@include file="Common2.jsp" %>
</head>
<body style="font-family: Arial, sans-serif;">
<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello:Admin</h3>
<table class="table table-striped ">
  <thead>
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Contact No.</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
      </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>@mdo</td>
      <td>@twitter</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@twitter</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@twitter</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
  </tbody>
</table>
<div style="margin-top:170px;">
<%@include file="adminfooter.jsp" %>
</div>
</body>
</html>