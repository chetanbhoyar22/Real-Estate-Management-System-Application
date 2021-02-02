<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase Property Form</title>
</head>
<body bgcolor="LightYellow">
<center>
<h2 Style="color:purple"><b>Purchase Property Form</b></h2>
<hr>
<h3><b style="color:red"><i>General Instructions</i></b></h3>
<h4><b style="color:green">*For booking this property you have to pay token amount - Rs. 50,000/- </b></h4>
<h4><b style="color:green">*If in case you will cancel booking, token amount will not be refundable.</b></h4>
<h4><b style="color:green">*Please fill the property name carefully.</b></h4>
<h4><b style="color:red">*Please purchase at a time only one property after all process completed you can apply another one.</b></h4>
<br>
<form name="frm" method="post" action="Purchase">
<table>
<tr>
<td><b>Your Name</b>
<td><input type="text" name="nm" placeholder="Enter Your Name" required>
</tr>
<tr>
<td><br><b>Property Name</b>
<td><br><input type="text" name="pnm" placeholder="Enter Property Name" required>
</tr>
<tr>
<td><br><b>Property Price</b>
<td><br><input type="text" name="ppr" placeholder="Ex.5.11 Lac/Cr" required>
</tr>
<tr>
<td><br><b>Your Mobile No.</b>
<td><br><input type="number" name="mob" placeholder="10 Digit Mob.No" required>
</tr>
<tr>
<td><br><b>Your Address & City</b>
<td><br><input type="text" name="ads" placeholder="Address" required>
</tr>
<tr>
<td><br><b>Token Amount</b>
<td><br><input type="number" name="amt" placeholder="*To Pay-50000*" required>
</tr>

<tr>
<td><br><b>Mode</b>
<td><br><input type="radio" name="opt" value="SBI Online"><b>SBI Online</b>
<td><br><input type="radio" name="opt" value="Credit Card"><b>Credit Card</b>
</tr>

<tr>
<td>
<td><br><input type="submit" value="Submit">
<br><br><br>
<a href="purchaseproperty.jsp"><b><i>Back</i></b></a>
</tr>
</table>
</form>
</body>
</html>