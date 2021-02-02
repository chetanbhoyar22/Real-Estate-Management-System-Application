<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sale Property Form</title>
</head>
<body bgcolor="LightYellow">
<%
if(session.getAttribute("email")!=null)
{
%>
<center>
<h2 Style="color:navy"><b>Sale Own Property Form</b></h2>
<marquee Style="color:blue"><i>Sale your property free of cost, no charge will be apply..!</i></marquee>
<hr>
<h3><b style="color:MediumVioletRed"><i>General Instructions</i></b></h3>
<h4><b style="color:green">*Please fill the form carefully.</b></h4>
<h4><b style="color:green">*All fields are mandatory.</b></h4>
<h4><b style="color:red">*Please sale own property at a time once, after complete the process you can sale (own) next one property.</b></h4>
<br>
<form name="frm" method="post" action="SaleProperty" >
<table>
<tr>
<td><b>Owner Name</b>
<td><input type="text" name="nm" placeholder="Name" required>
</tr>
<tr>
<td><b>Address</b>
<td><input type="text" name="ads" placeholder="Address" required>
</tr>

<tr>
<td><b>City</b>
<td><input type="text" name="cit" placeholder="Location" required>
</tr>

<tr>
<td><b>Mobile No.</b>
<td><input type="number" name="mob" placeholder="10 Digit Mobile Number" required>
</tr>

<tr>
<td><b>Email ID</b>
<td><input type="text" name="em" placeholder="Email" required>
</tr>

<tr>
<td><b>Property Type</b> 
<td>
<input type="radio" name="pt" value="Apartment"> Apartment
<input type="radio" name="pt" value="Commercial"> Commercial
<input type="radio" name="pt" value="Residential"> Residential

</tr>

<tr>
<td><b>Property Status</b> 
<td>
<input type="radio" name="ps" value="Sale"> Sale
<input type="radio" name="ps" value="Rent"> Rent
</tr>

<tr>
<td><b>Property (In Sq.Ft.)</b>
<td><input type="number" name="psf" placeholder="Range" required>
</tr>

<tr>
<td><b>Year of Construction</b>
<td><input type="number" name="yc" placeholder="Year" required>
</tr>

<tr>
<td><b>Property Description</b>
<td><input type="text" name="pd" placeholder="Description" required>
</tr>

<tr>
<td><b>Premium Amenities</b>
<td><input type="text" name="pa" placeholder="Ex. Garden,Swimmingpool,etc" required>
</tr>


<tr>
<td><b>Property Price</b>
<td><input type="number" name="pr" placeholder="Price" required>
</tr>

<tr>
<td><b>Booking Amount</b>
<td><input type="number" name="ba" placeholder="Amount" required>
</tr>

<tr>
<td><br>
<td>
</tr>

<tr>
<td>
<td><input type="submit" value="Submit">
<td>
</td>
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