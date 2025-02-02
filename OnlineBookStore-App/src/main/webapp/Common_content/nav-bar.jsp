
<!-- <div class="container-fluid" style="height: 7px;background-color:#303f9f;"></div> -->
<%@ page import="com.entity.User" %>
<%
		User us2=(User)session.getAttribute("userobj");
	%>
<div class="container-fluid p-3 bg-light">
<div class="row">
<div class="col-md-3 text-success">
<h3><i class="fa-solid fa-book-open-reader"></i> E-Bookstore</h3>
</div> 
<div class="col-md-6">
	 <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
     </form>
</div>
<%
		if(us2==null){
		%>
		<div class="col-md-3">
			<a href="login.jsp" class="btn btn-success">Login</a>
			<a href="register.jsp" class="btn btn-primary text-white"><i class="fa-solid fa-user-plus"></i> Register</a>

	   </div>
		<% 
		}else{
		%>
		<div class="col-md-3">
			<a href="checkout.jsp" class="btn btn-primary"><i class="fa-solid fa-cart-shopping fa-1x"></i></a>
			<a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-user"></i> <%=us2.getUserName() %></a>
			<a href="admin/logout.jsp" class="btn btn-primary text-white"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>

		</div>
		<%
		}
		%>

</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Front1.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="all_E-Book.jsp"><i class="fa-solid fa-book"></i> E-Books</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link disabled" href="all_PurchasingBooks.jsp"><i class="fa-solid fa-book"></i> Purchasing Books</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link disabled" href="all_Notes.jsp"><i class="fa-solid fa-book"></i> Notes</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a href="setting.jsp"class="btn btn-light my-2 my-sm-0 mr-3" type="submit"><i class="fa-solid fa-gear"></i> Setting </a >
      <a class="btn btn-light my-2 my-sm-0 " type="submit"><i class="fa-solid fa-address-book"></i> Contact Us</a>
    </form>
  </div>
</nav>