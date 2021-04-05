<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password Form</title>
</head>
<body bgcolor="CornSilk">
<%
if(session.getAttribute("email")!=null)
{
%>
<center>
<h2 Style="color:purple">Change Password Form</h2>
<hr>
<br>
<form name="frm" method="post" action="Change">
<table>
<tr>
<td><b>Email ID</b>
<td><input type="text" name="uid" placeholder="Email" required>
</tr>

<tr>
<td><b>Current Password</b>
<td><input type="password" name="curps" placeholder="Current Password"  required>
</tr>

<tr>
<td><b>New Password</b>
<td><input type="password" name="newps" placeholder="New Password" required>
</tr>

<tr>
<td><b>Confirm Password</b>
<td><input type="password" name="conps" placeholder="Confirm Password" required>
</tr>

<tr>
<td><br>
<td>
</tr>

<tr>
<td>
<td><input type="submit" value="Submit">
<td>
</tr>
</table>
<br>
<hr>
<a href="userdashboard.jsp"><b>Home</b></a>
</form>
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