<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="rems_beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Users List</title>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
String name=request.getParameter("nm");
%>
<center>
<h2 Style='color:blue'>All Users List</h2>
<hr><br>
<table width="1000px" height="500px" border="1" cellspacing="0" bordercolor="black">
<tr style="background-color:yellow">
<th>Name
<th>Email
<th>Mobile No.
<th>Action
</tr>

<%
Connection con;
PreparedStatement pst;
ResultSet rs;
String nm;

try
{
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection(); 
	
	pst=con.prepareStatement("select * from userpersonal;");
	
	rs=pst.executeQuery();
	while(rs.next())
	{
		nm=rs.getString("name");
		%>
		
		<tr>
		<td><center><b><%=rs.getString("name") %>
		<td><center><b><%=rs.getString("email") %>
		<td><center><b><%=rs.getString("mobileno") %>
		<td><center><b><a href="deleteuser.jsp?name=<%=nm%>">Delete User</a>
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
<br>
<br><br>
<hr><br>	
<a href="adminpanel.jsp"><b>Home</b></a>
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