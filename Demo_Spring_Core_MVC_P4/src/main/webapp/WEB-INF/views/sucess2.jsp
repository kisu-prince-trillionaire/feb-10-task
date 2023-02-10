<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>User Registration Form</title>
</head>
<body>
	<h1>User Profile Uploaded sucessfully</h1>
	<img alt="" src="<c:url value="/resources/images/${path}" />" />
</body>
</html>