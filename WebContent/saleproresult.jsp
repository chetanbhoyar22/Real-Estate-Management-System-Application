<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	  <%@page import="java.sql.*" %>
      <%@page import="rems_beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sale Own Property Record Page</title>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
%>
<center>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
String name=request.getParameter("nm");
String price=request.getParameter("pr");
try
{	
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection(); 
	
	pst=con.prepareStatement("select * from SOP where name=? and price=?;");
	pst.setString(1, name);
	pst.setString(2, price);
    rs=pst.executeQuery();
    if(rs.next())
	{
    	
%>
    	<h2 Style='color:brown'>Your Sale Property Record</h2>
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
    	<th>Action
    	</tr>
<%	
	name=rs.getString("name");
    price=rs.getString("price");
	
%>
		<center>
		<h3><b style="color:red">General Instructions</b></h3>
		<h4><b style="color:green">*If status will be <i style="color:purple">pending,</i> don't worry ! Administrator will be contact you.</b></h4>	
		<h4><b style="color:green">*Regarding your sale property every update will be share on your<i style="color:purple"> email.</i><br><br>
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
		<td><center><b><%=price %>
		<td><center><b><%=rs.getString("bamt") %>
		<td><center><b><%=rs.getString("status") %>
		<td><center><b><a href="cancelsp1.jsp?nm=<%=name%>">Delete Property</a>
		</tr>	
<%
}
    else{
    	out.println("<h2 Style='color:brown'>ERROR</h3>");
    	out.println("<hr>");
    	out.println("<h3 Style='color:red'>Please Check Your Name & Your Property Price</h3>");
    	out.println("<h3 Style='color:black'>OR</h3>");
    	out.println("<h3 Style='color:red'>No Record Found...!</h3>");
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
<a href="userdashboard.jsp"><b>Home</b></a> | <a href="contact.html"><b>Contact Us</b></a>
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