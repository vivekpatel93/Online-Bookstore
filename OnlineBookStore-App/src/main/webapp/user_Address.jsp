<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User:Address</title>
<%@include file="Common_content/Common1.jsp" %>
</head>
<body style="background-color:#dcdedc;">
<%@include file="Common_content/nav-bar.jsp" %>

<div class="container">
<div class="row p-3">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<h3 class="text-center text-primary">User Address</h3>
<form action="">

<div class="form-row">
    
    <div class="form-group col-md-6">
      <label for="inputAddress">Address</label>
      <input type="text" class="form-control" id="inputAddress" >
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputLandmark">Landmark</label>
      <input type="text" class="form-control" id="inputLandmark" >
    </div>
    
  </div>
  
  <div class="form-row">
    
    <div class="form-group col-md-4">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity" >
    </div>
    
    <div class="form-group col-md-4">
      <label for="inputLandmark">State</label>
      <input type="text" class="form-control" id="inputState" >
    </div>
    
    <div class="form-group col-md-4">
      <label for="inputPinCode">PinCode</label>
      <input type="text" class="form-control" id="inputPinCode" >
    </div>
    
  </div>
  
  <div class="text-center">
  <button class="btn btn-success"><i class="fa-solid fa-square-check"></i> Save</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
<%@include file="Common_content/footer.jsp" %>
</body>
</html>