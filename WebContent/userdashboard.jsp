<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.time.LocalDate" %>
<!doctype html>
<html>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>User Dashboard</title>
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>
    <link href="css/real-estate.css" rel="stylesheet">
    <link href='' rel='stylesheet'>
<style>
    body {
    background-color: #OOFFOO;
}

.card {
    width: 400px;
    border: none;
    margin: 100px;
}

.btr {
    border-top-right-radius: 5px !important
}

.btl {
    border-top-left-radius: 5px !important
}

.btn-dark {
    color: #fff;
    background-color: #0d6efd;
    border-color: #0d6efd
}

.btn-dark:hover {
    color: #fff;
    background-color: #0d6efd;
    border-color: #0d6efd
}

.nav-pills {
    display: table !important;
    width: 100%
}

.nav-pills .nav-link {
    border-radius: 0px;
    border-bottom: 1px solid #0d6efd40
}

.nav-item {
    display: table-cell;
    background: #0d6efd2e
}

.form {
    padding: 10px;
    height: 300px
}

.form input {
    margin-bottom: 12px;
    border-radius: 3px
}

.form input:focus {
    box-shadow: none
}

.form button {
    margin-top: 20px
}

#navlink {
    background-color: #343a40;
}

</style>
</head>
<body oncontextmenu='return false' class='snippet-body'>

<!-- Navigation -->-
<%
if(session.getAttribute("email")!=null)
{
%>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="userdashboard.jsp">VastuNamah</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto" style="background-color: #343a40">
          <li class="nav-item active">
            <a class="nav-link" id="navlink" href="userdashboard.jsp">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="navlink" href="purchaseproperty.jsp">All Properties</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="navlink" href="showprofile1.jsp">Your Profile</a>
          </li>
          <li class="nav-item">
          	<a class="nav-link" id="navlink" href="contact.html">Contact</a>
          </li>
          <li class="nav-item">
          	<a class="nav-link" id="navlink" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="navlink" href="logout.jsp">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <br>
  <br>
  <br>
  

<%
String uid=String.valueOf(session.getAttribute("email"));
%>
<center>
<h2 Style="color:Purple"><b>Welcome To User Panel</b></h2>
<br>
<b>Logged in as : <%=uid %></b>
<br>
<b>Session ID : <%=session.getId() %></b><br>
<b>Date : <%=LocalDate.now() %></b><br>
<hr>
<h4 Style="color:blue"><b><i>Your Account Information</i></b></h4> 
<br>
<a href="showprofile1.jsp"><b>Show My Profile</b></a> &nbsp; | &nbsp;
<a href="changepassword1.jsp"><b>Change Password</b></a>
<hr>
<h4 Style="color:red"><b><i>Tools</i></b></h4>
<br>
&emsp; &ensp; &nbsp; <a href="purchaseproperty.jsp"><b>Purchase Property</b></a> &nbsp; | &nbsp;
<a href="showpurchasepro.html"><b>Show Purchase Property</b></a>
<br>
<a href="sale.jsp"><b>Sale Own Property</b></a> &nbsp; | &nbsp;
<a href="showsalepro.html"><b>Show Sale Property</b></a>
<br><br>
<a href="contact.html"><b Style="color:red">Click Here For Property Enquiry</b></a>
<br>
<br><br><br><br>
<!-- Footer -->
  <footer class="py-2 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white"> &ensp; Copyright @2021 - MCA-PRMIT&R Badnera-Amravati</p>
    </div>
    <!-- /.container -->
  </footer>
  <%
}
else
{
	%>
	<center>
	<h4 style="color:red">Invalid Session</h4>
	<hr><br>
	<a href="login.html"><h5>Login Now</h5></a>
	
	<%
}
%>
</body>
</center>
<script type='text/javascript' src=''></script>
    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>
    <script type='text/javascript'></script>
</html>
