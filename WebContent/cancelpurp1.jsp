<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="rems_beans.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase Property Deleted</title>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
String name=request.getParameter("nm");
%>
<center>
<h2 Style='color:green'>Purchase Property Deleted Successfully...! </h2>
<hr>
<%
Connection con;
PreparedStatement pst;
try
{
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection(); 
	pst=con.prepareStatement("delete from purchaseproperty where poname=?;");
	pst.setString(1,name);
	pst.executeUpdate();
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
<br>
<a href="userdashboard.jsp"><b>Go To Home</b></a>
<%
}
else 
{
%>
    <center>
	<h3 style="color:red">Invalid Session</h3>
	<hr>
	<a href="login.html"><h4>Login Now</h4></a>
<%
}
%>
</body>
</html>