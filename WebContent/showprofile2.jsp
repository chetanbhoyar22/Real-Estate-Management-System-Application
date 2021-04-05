<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
      <%@page import="rems_beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile</title>
</head>
<body bgcolor="Cornsilk">
<%
if(session.getAttribute("email")!=null)
{
%>
<center>
<%
String uid=String.valueOf(session.getAttribute("email"));
%>
<h2 Style="color:green">User Profile For <%=uid %></h2>
<hr>
<br>
<table width="450px" border="1" cellspacing="0" bordercolor="black">
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
try 
{
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection();
	pst=con.prepareStatement("select * from userpersonal where email=?;");
	pst.setString(1,uid);
	rs=pst.executeQuery();
	
	if(rs.next())
	{
		%>
		<tr>
		<td><b>Name</b>
		<td><b><%=rs.getString("name") %></b>
		</tr>
		
		<tr>
		<td><b>Email ID</b>
		<td><b><%=rs.getString("email") %></b>
		</tr>
		
		<tr>
		<td><b>Mobile No.</b>
		<td><b><%=rs.getString("mobileno") %></b>
		</tr>
	<%	
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
<br>
<hr>
<a href="adminpanel.jsp"><b>Home</b></a>
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