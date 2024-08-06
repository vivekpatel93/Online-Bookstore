<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DAO.CartDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.Cart" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Cart</title>
<%@include file="Common_content/Common1.jsp" %>
</head>
<body>
<%@include file="Common_content/nav-bar.jsp" %>
<div class="container">
<div class="row p-4">
<div class="col-md-6">
<div class="card bg-white">
<div class="card-body">
<h3 class="text-center text-success">Your Selected Items:</h3>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
  User u=(User)session.getAttribute("userobj");
  CartDAOImpl dao=new CartDAOImpl(DBConnect.getCon());
  List<Cart> cart=dao.getBookByUser(u.getUser_id());
  double TotalPrice=0.00;
  for(Cart c:cart){
	  TotalPrice=c.getTotalPrice();
  %> 
  <tr>
      <th scope="row"><%=c.getBookName() %></th>
      <td><%= c.getAuthor() %></td>
      <td><%= c.getPrice() %></td>
      <td>
      <a href="remove_book?Book_id=<%=c.getBook_id() %>&User_id=<%= c.getUser_id() %>" class="btn btn-sm btn-danger">Remove</a>
      </td>
    </tr>
  <%  
  }
  %>
  <tr>
      <th scope="row">Total Price</th>
      <td></td>
      <td></td>
      <td><%=TotalPrice %> <i class="fa-solid fa-indian-rupee-sign"></i></td>
    </tr>  
    
  </tbody>
</table>
</div>
</div>
</div>

<div class="col-md-6">
<div class="card">
<div class="card-body">
<h3 class="text-center text-success">User Details:</h3>
<form>
<div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputName">Name</label>
      <input type="text" class="form-control" id="inputName" value="<%= u.getCompleteName() %>" readonly="readonly" />
      
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" value="<%=u.getEmail() %>" readonly="readonly">
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputNumber">Contact Number</label>
      <input type="text" class="form-control" id="inputNumber" value="<%=u.getContactNumber() %>">
    </div>
    <div class="form-group col-md-6">
      <label for="inputAddress">Address</label>
      <input type="text" class="form-control" id="inputAddress" >
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputLandmark">Landmark</label>
      <input type="text" class="form-control" id="inputLandmark" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity" >
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputLandmark">State</label>
      <input type="text" class="form-control" id="inputState" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputPinCode">PinCode</label>
      <input type="text" class="form-control" id="inputPinCode" >
    </div>
  </div>
  
  <div class="form-group">
  <label>Payment Mode</label>
  <select class="form-control">
  <option>Select---------</option>
  <option>Cash On Delivery</option>
  </select>
  </div>
  
  <div class="text-center">
  <button class="btn btn-warning">Order Now</button>
  <a href="Front1.jsp" class="btn btn-success">Continue Shopping</a>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>
