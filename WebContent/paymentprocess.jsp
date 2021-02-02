<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Process</title>
</head>
<body bgcolor="LightYellow">
<center>
<%
String mode;
mode=request.getParameter("opt");
if(mode.equals("SBI Online"))
{
response.sendRedirect("https://retail.onlinesbi.com/retail/login.htm");  
}
else
{
%>
<jsp:forward page="credit.jsp"></jsp:forward>
<%
}
%>
</body>
</html>