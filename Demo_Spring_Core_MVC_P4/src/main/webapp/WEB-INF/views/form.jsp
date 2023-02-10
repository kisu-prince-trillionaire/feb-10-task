<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<link href="<c:url value="/resources/css/style.css" />">
<title>!</title>
</head>
<body>
	<div class="container mt-5 card bg-light" style="width: 70rem;">
		<h1 class="text-center">User Registration Form</h1>
		<div class="alert alert-danger" role="alert">
			<form:errors path="user.*" />
		</div>
		<form action="handle" method="post">
			<div class="mb-3">
				<label for="exampleInputName" class="form-label">User Name</label> <input
					type="text" class="form-control" id="exampleInputName"
					aria-describedby="emailHelp" placeholder="Enter name" name="name">
				<div id="emailHelp" class="form-text">We'll never share your
					name with anyone else.</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Email
					address</label> <input type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter email" name="email">
				<div id="emailHelp" class="form-text">We'll never share your
					email with anyone else.</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<input type="password" class="form-control"
					id="exampleInputPassword1" placeholder="Enter password"
					name="password">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter
					Date of Birth</label> <input type="text" class="form-control"
					id="exampleInputPassword1" placeholder="Enter your dob" name="dob">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlSelect1" class="form-label">Select
					Your Subject</label> <select class="form-select  form-control"
					aria-label=".form-select-lg example" name="subject">
					<option selected>Open this select menu</option>
					<option value="java">Java</option>
					<option value="Python">Python</option>
					<option value="Spring">Spring</option>
					<option value="Math">MAth</option>
					<option value="Science">Science</option>
					<option value="Data Science">DataScience</option>
				</select>
			</div>

			<div class="mb-3">
				<label for="exampleFormControlSelect1" class="form-label">Select
					Your Subject</label>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="Java"
						id="flexCheckDefault" name="subjects"> <label
						class="form-check-label" for="flexCheckDefault"> Java </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="Python"
						id="flexCheckDefault" name="subjects"> <label
						class="form-check-label" for="flexCheckDefault"> Python </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox"
						value="Machine Learning" id="flexCheckDefault" name="subjects">
					<label class="form-check-label" for="flexCheckDefault">
						Machine Learning </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox"
						value="Data Science" id="flexCheckDefault" name="subjects">
					<label class="form-check-label" for="flexCheckDefault">
						Data Science </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="Math"
						id="flexCheckDefault" name="subjects"> <label
						class="form-check-label" for="flexCheckDefault"> Math </label>
				</div>
			</div>

			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Select
					Your Gender</label>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender"
						id="flexRadioDefault1" value="Male"> <label
						class="form-check-label" for="flexRadioDefault1"> Male </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender"
						id="flexRadioDefault1" value="Female"> <label
						class="form-check-label" for="flexRadioDefault1"> Female </label>
				</div>
			</div>
			<div class="mb-3 ">
				<label for="exampleFormControlSelect1" class="form-label">Select
					Your Subject</label> <select class="form-select form-control"
					aria-label="Default select example" name="type">
					<option selected>Open this select menu</option>
					<option value="Old">Old</option>
					<option value="new">New</option>
					<option value="Fresh">Fresh</option>
				</select>
			</div>
			<div class="card container mb-3">
				<h3 class="card-title card-body">Enter your Adress here</h3>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Enter
						street</label> <input type="text" class="form-control"
						id="exampleInputPassword1" placeholder="Enter street name"
						name="adress.street">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Enter
						City</label> <input type="text" class="form-control"
						id="exampleInputPassword1" placeholder="Enter City name"
						name="adress.city">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Enter
						state</label> <input type="text" class="form-control"
						id="exampleInputPassword1" placeholder="Enter state name"
						name="adress.state">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Enter
						street</label> <input type="text" class="form-control"
						id="exampleInputPassword1" placeholder="Enter Country name"
						name="adress.country">
				</div>
			</div>
			
			<div class="container text-center mb-3">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
</body>
</html>