<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>Health Logs</title>
</head>


<body>


	<div class="container">
		<blockquote class="blockquote text-center">
			<h1>
				<u>
					<p class="bg-info text-black">
					<h1 style="font-family: american typewriter, serif;">
						<h1 style="font-size: 190%;">
							Welcome to my Communal Health Log
							</p>
						</h1>
					</h1>
			</h1>
			</u>
		</blockquote>

	</div>

	<style>
body {
	background-image:
		url('https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/illustration-of-hibiscus-flower-illustration-by-shannon-posedenti.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

h3 {
	text-shadow: 0 0 2px white;
	padding-top: 0%;
}

body {
	font-family: 'Palatino', serif;
}

h2 {
	text-shadow: 0 0 2px white;
	padding-top: 0%;
}
</style>

<div>

	<form action="getHealth.do" method="POST">
		<h2><b> Search by Id: </b></h2>
		
		<input type="text" name="id" /> <input type="submit" value="Submit" />
	</form></div>
	<br>
	<form action="getHealthUserName.do" method="GET">
		<h2>
			<b> Search by User: </b>
		</h2>
		<input type="text" name="userName" /> 
		<input type="submit"
			value="Submit" />
	</form>

	<div class="container">
		<div class="form-container">
			<h2>Add New Log Entry</h2>
			<form id="createLog" action="createLog.do?=${healthLog}"
				method="POST">
				<input type="hidden" name="id" value="${healthLog.id}" /> <label
					for="username"><b>User Name:</b></label> <input type="text"
					id="userName" name="userName" value="${healthLog.userName}" /> <br>
				<label for="logDate"><b>Date of Log Entry:</b></label> <input
					type="text" id="logDate" name="logDate"
					value="${healthLog.logDate}" /> <br> 
					<label for="totalSteps"><b>Total
						Steps:</b></label> <input type="text" id="totalSteps" name="totalSteps"
					value="${healthLog.totalSteps}" /> <br> 
					<label
					for="sleepMinutes"><b>Sleep in Minutes:</b></label> <input
					type="text" id="sleepMinutes" name="sleepMinutes"
					value="${healthLog.sleepMinutes}" /> <br> 
					<label
					for="waterOunces"><b>Ounces of Water:</b></label> <input
					type="text" id="waterOunces" name="waterOunces"
					value="${healthLog.waterOunces}" /> <br> 
					<label for="mood"><b>Mood:</b></label>
				<input type="text" id="mood" name="mood" value="${healthLog.mood}" />
				<br>
				<button type="submit" class="btn btn-danger">Add New Entry</button>
			</form>
		</div>
	</div>

</body>
</html>