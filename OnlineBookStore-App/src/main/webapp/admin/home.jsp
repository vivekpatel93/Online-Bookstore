<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Home</title>
<%@include file="Common2.jsp" %>
<style>
a{
text-decoration:none;
color:black;
}
a:hover{
text-decoration:none;
color:black;
cursor:grab;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
<div class="row p-5">
<div class="col-md-3">
<a href="add_books.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-regular fa-square-plus fa-3x text-primary"></i><br>
<h4>Add Books</h4>
----------
</div>
</div>
</a>
</div>

<div class="col-md-3">
<a href="all_books.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-book-open fa-3x text-danger"></i><br>
<h4>All Books</h4>
----------
</div>
</div>
</a>
</div>

<div class="col-md-3">
<a href="order.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
<h4>Orders</h4>
----------
</div>
</div>
</a>
</div>

<div class="col-md-3">
<a data-toggle="modal" data-target="#exampleModalCenter">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
<h4>Logout</h4>
----------
</div>
</div>
</a>
</div>

</div>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><i class="fa-solid fa-right-from-bracket"></i></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
       <h5>Are you sure want to logout?</h5>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="logout.jsp"><button type="button" class="btn btn-primary">Logout</button></a>
      </div>
    </div>
  </div>
</div>

<div style="margin-top:160px;">
<%@include file="adminfooter.jsp" %>
</div>
</body>
</html>