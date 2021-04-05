<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="rems_beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users Purchase Property List</title>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
String name=request.getParameter("nm");
%>
<center>
<h2 Style='color:purple'>All Users Purchase Property List</h2>
<hr><br>
<table width="1400px" height="300px" border="1" cellspacing="0" bordercolor="black">
    	<tr style="background-color:yellow">
    	<th>Your Name
    	<th>Property Name
    	<th>Property Price
    	<th>Your Mob. No.
    	<th>Your Address
    	<th>Token Amount Pay
    	<th>Pay Mode
    	<th>Purchase Date
    	<th>Amt. Status
    	<th>Response To User
    	<th>Delete Action
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
	
	pst=con.prepareStatement("select * from purchaseproperty;");
	
	rs=pst.executeQuery();
	while(rs.next())
	{
		name=rs.getString("poname");
		%>
		<tr>
		<td><center><b><%=name %>
		<td><center><b><%=rs.getString("pname") %>
		<td><center><b><%=rs.getString("price") %>
		<td><center><b><%=rs.getString("mobno") %>
		<td><center><b><%=rs.getString("addr") %>
		<td><center><b><%=rs.getDouble("amount") %>
		<td><center><b><%=rs.getString("pay_mode") %>
		<td><center><b><%=rs.getDate("pdate") %>
		<td><center><b><%=rs.getString("status") %>
		<td><center><b><a href="https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F%3Ftab%3Drm%26ogbl&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin" target="_blank">Mail</a>
		<td><center><b><a href="cancelpurp2.jsp?nm=<%=name%>">Delete Property</a>
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