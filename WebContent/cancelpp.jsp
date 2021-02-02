<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
      <%@page import="rems_beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Cancel Page</title>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
%>
<center>
<%
String name=request.getParameter("nm");
%>
<br>
<h2><b style="color:red"><%=name %> Purchase Property Has Been Cancelled..!</b></h2>
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
	out.println("<h3 Style='color:brown'>Transaction Deleted");
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
<br><br>
<a href="purchaseproperty.jsp">Purchase Property</a>
<br><br>
<hr>
<a href="userdashboard.jsp"><i>Home</i></a> | <a href="contact.html"><i>Contact Us</i></a>

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