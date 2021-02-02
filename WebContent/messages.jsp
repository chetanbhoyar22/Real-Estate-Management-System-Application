<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="rems_beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Users Query</title>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
String name=request.getParameter("nm");
%>
<center>
<h2 Style='color:blue'>All Users Query</h2>
<hr><br>
<table width="1200px" height="180px" border="1" cellspacing="0" bordercolor="black">
<tr style="background-color:yellow">
<th>Name
<th>EmailId
<th>Subject
<th>Message
<th>Response To User
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
	
	pst=con.prepareStatement("select * from usermsg;");
	
	rs=pst.executeQuery();
	while(rs.next())
	{
		nm=rs.getString("name");
		%>
		
		<tr>
		<td><center><b><%=rs.getString("name") %>
		<td><center><b><%=rs.getString("emailid") %>
		<td><center><b><%=rs.getString("subject") %>
		<td><center><b><%=rs.getString("message") %>
		<td><center><b><a href="https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F%3Ftab%3Drm%26ogbl&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin" target="_blank">Mail</a>
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