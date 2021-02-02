<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Credit Page</title>
</head>
<body bgcolor="LightYellow">
<center>
<h2 Style="color:orange"><b><i>Enter Credit Card Details To Pay Amount </i></b></h2>
<hr>
<br>
<form name="frm" method="post" action="paid.jsp">
<table>
<tr>
<td><b>Card Holder Name:</b> 
<td><input type="text" name="nm" placeholder="Name" required>
</tr>

<tr>
<td><br><b>Enter Card Number:</b> 
<td><br><input type="number" name="no"  placeholder="16 Digit No." required>
</tr>

<tr>
<td><br><b>Enter Exp. Month:</b> 
<td><br>
<select name="Month">
<option value="01">01
<option value="02">02
<option value="03">03
<option value="04">04
<option value="05">05
<option value="06">06
<option value="07">07
<option value="08">08
<option value="09">09
<option value="10">10
<option value="11">11
<option value="12">12
</select>
</tr>

<tr>
<td><br><b>Enter Exp. Year:</b> 
<td><br>
<select name="Year">
<option value="2020">2020
<option value="2021">2021
<option value="2022">2022
<option value="2023">2023
<option value="2024">2024
<option value="2025">2025
<option value="2026">2026
<option value="2027">2027
<option value="2028">2028
<option value="2029">2029
<option value="2030">2030
<option value="2031">2031
</select>
</tr>

<tr>
<td><br><b> Enter CVC Code:</b> 
<td><br><input type="number" name="cv" placeholder="3 Digit Code" required>
</tr>
<tr>
<td>
<td><br><input type="submit" value="Paid">
</tr>
</table>
</form>
<br>
<hr>
<h3 Style="color:red">*Read the instructions carefully..!*</h3>
<br>
<h4 Style="color:green">* Do not reload the page.</h4>
<h4 Style="color:green">* Fil the credit card information carefully.</h4>
<h4 Style="color:purple"> *Thank You...!*</h4>

</body>
</html>