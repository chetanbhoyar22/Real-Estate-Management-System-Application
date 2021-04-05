<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
      <%@page import="rems_beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase Property Record Page</title>
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
String pname=request.getParameter("pnme");
String name=request.getParameter("nme");

try
{	
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection(); 
	
	pst=con.prepareStatement("select * from purchaseproperty where pname=? and poname=?;");
	pst.setString(1, pname);
	pst.setString(2, name);
    rs=pst.executeQuery();
    if(rs.next())
	{
    	
%>
    	<h2 Style='color:brown'>Your Purchase Property Record</h2>
		<hr>
		<br>

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
    	<th>Action
    	</tr>
<%	
	name=rs.getString("poname");
    pname=rs.getString("pname");
	
%>
	<center>
	<h3><b style="color:red">General Instructions</b></h3>
	<h4><b style="color:green">*If in case you will cancel property, token amount will not be refundable & process will be denied.*</b></h4>
		<tr>
		<td><center><b><%=name %>
		<td><center><b><%=pname %>
		<td><center><b><%=rs.getString("price") %>
		<td><center><b><%=rs.getString("mobno") %>
		<td><center><b><%=rs.getString("addr") %>
		<td><center><b><%=rs.getDouble("amount") %>
		<td><center><b><%=rs.getString("pay_mode") %>
		<td><center><b><%=rs.getDate("pdate") %>
		<td><center><b><%=rs.getString("status") %>
		<td><center><b><a href="cancelpurp1.jsp?nm=<%=name%>">Delete Property</a>
	    </tr>
	    
<%	
}
    else{
    	out.println("<h2 Style='color:brown'>ERROR</h3>");
    	out.println("<hr>");
    	out.println("<h3 Style='color:red'>Please Check Your Name & Property Name</h3>");
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
	<a href="login.html"><b>Login Now</b></a>
<%
}
%>
</body>
</html>