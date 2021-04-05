<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="rems_beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users Sale Own Property List</title>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
%>
<center>
<h2 Style='color:brown'>All Users Own Sale Property Records</h2>
		<hr>
		<br>

    	<table width="1500px" height="300px" border="1" cellspacing="0" bordercolor="black">
    	<tr style="background-color:yellow">
    	<th>Your Name
    	<th>Address
    	<th>City
    	<th>Mob. No.
    	<th>Email
    	<th>Property Type
    	<th>Property Status
    	<th>Property Range
    	<th>YOC
    	<th>Property Description
    	<th>Premium Amenities
    	<th>Property Price
    	<th>Booking Amount
    	<th>Status
    	<th>Response To User
    	<th> Delete Action
    	</tr>

<%
Connection con;
PreparedStatement pst;
ResultSet rs;
String name=request.getParameter("nm");
try
{	
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection(); 
	
	pst=con.prepareStatement("select * from SOP;");
    rs=pst.executeQuery();
    while(rs.next())
	{
    	name=rs.getString("name");
        %>
    	<tr>
    	<td><center><b><%=name %>
		<td><center><b><%=rs.getString("address") %>
		<td><center><b><%=rs.getString("city") %>
		<td><center><b><%=rs.getString("mobileno") %>
		<td><center><b><%=rs.getString("email") %>
		<td><center><b><%=rs.getString("ptype") %>
		<td><center><b><%=rs.getString("pstatus") %>
		<td><center><b><%=rs.getString("prange") %>
		<td><center><b><%=rs.getString("yoc") %>
		<td><center><b><%=rs.getString("pdesc") %>
		<td><center><b><%=rs.getString("pame") %>
		<td><center><b><%=rs.getString("price") %>
		<td><center><b><%=rs.getString("bamt") %>
		<td><center><b><%=rs.getString("status") %>
		<td><center><b><a href="https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F%3Ftab%3Drm%26ogbl&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin" target="_blank">Mail</a>
		<td><center><b><a href="cancelsp2.jsp?nm=<%=name%>">Delete Property</a>
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
	<a href="login.html"><h4>Login Now</h4></a>
<%
}
%>
</body>
</html>