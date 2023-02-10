<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>User Registration Form</title>
</head>
<body>
	<h1>User Registration Form</h1>
	<h1>Name is : ${user.name}</h1>
	<h1>Email is : ${user.email}</h1>
	<h1>Password is : ${user.password}</h1>
	<h1>DOB is : ${user.dob}</h1>
	<h1>Subject is : ${user.subject}</h1>
	<h1>Subjects are : ${user.subjects}</h1>
	<h1>Gender is : ${user.gender}</h1>
	<h1>Type is : ${user.type}</h1>
	
	<hr>
	<h1>Street is : ${user.adress.street}</h1>
	<h1>City is : ${user.adress.city}</h1>
	<h1>State is : ${user.adress.state}</h1>
	<h1>Country is : ${user.adress.country}</h1>
</body>
</html>