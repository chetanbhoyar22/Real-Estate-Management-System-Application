<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="rems_beans.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Deleted</title>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
String nm=request.getParameter("name");
%>
<center>
<h2 Style='color:green'>User Deleted Successfully...! </h2>
<hr>
<%
Connection con;
PreparedStatement pst;
try
{
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection(); 
	pst=con.prepareStatement("delete from userpersonal where name=?;");
	pst.setString(1,nm);
	pst.executeUpdate();
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
<br>
<a href="adminpanel.jsp"><b>Go To Home</b></a>
<%
}
else 
{
%>
    <center>
	<h3 style="color:red">Invalid Session</h3>
	<hr>
	<a href="login.html"><b>Login Now</b></a>
<%
}
%>
</body>
</html>