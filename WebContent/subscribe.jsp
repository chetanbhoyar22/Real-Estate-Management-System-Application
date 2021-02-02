<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="rems_beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Subscribers List</title>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
%>
<center>
<h2 Style='color:blue'>All Subscribers</h2>
<hr><br>
<table width="800px" height="250px" border="1" cellspacing="0" bordercolor="black">
<tr style="background-color:yellow">
<th>User EmailId
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
	
	pst=con.prepareStatement("select * from subscribe;");
	
	rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td><center><b><%=rs.getString("Subscribed_EmailId") %>
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