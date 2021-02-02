<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<%
session.invalidate();
%>
<center>
<h2 Style='color:purple'>You Are Successfully Logged Out..!</h2>
<hr>
<a href="index.html">Home</a>
</body>
</html>