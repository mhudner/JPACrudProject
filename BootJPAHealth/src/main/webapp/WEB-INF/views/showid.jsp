<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	


<title>Insert title here</title>
</head>


<body>
<div class="container">
<blockquote class="blockquote text-center">  <h1><u>
  <p class="bg-info text-black"><h1 style="font-family:american typewriter,serif;"><h1 style="font-size:180%;">Welcome to my Communal Health Log</p></h1></h1></h1></u>
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
body{
font-family:'Palatino', serif;}
</style>

<style>
h2 {
  text-shadow: 0 0 2px white;
  padding-top: 0%;
}</style>
	
			<div class="container">
			<div class="form-container">
			<br>
<br>
<br>
		<h2><b>Log Entry</b></h2>
		<div>
			<table>
				<tr>
					<th>ID:</th>
					<td>${healthLog.id}</td>
					</tr>
					<tr><th>User Name:</th>
					<td>${healthLog.userName}</td>
					</tr>
					<tr>
					<th>Log Date:</th>
					<td>${healthLog.logDate}</td></tr>
					<tr>
					<th>Total Steps:</th>
					<td>${healthLog.totalSteps}</td></tr>
					<tr>
					<th>Sleep in Minutes:</th>
					<td>${healthLog.sleepMinutes}</td></tr>
					<tr>
					<th>Ounces of Water:</th>
					<td>${healthLog.waterOunces}</td></tr>
					<tr>
					<th>Mood:</th>
					<td>${healthLog.mood}</td>
					</tr>
				<tr>
					<td><form action="deleteLog.do"
							onsubmit="return window.confirm('Are you sure you want to delete this log?');"
							method="POST">
							<div class="form-group">
								<input type="hidden" class="form-control" id="id" name="id"
									value="<c:out value='${healthLog.id}' />">
							</div>
							<button type="submit" class="btn btn-danger">Delete	Entry</button>
						</form></td>
				</tr>

			</table>
			</div>
		</div>
		</div>
<br>
		<div class="container">
			<div class="form-container">
				<h2><b>Update Log</b></h2>
				<form id="updateLog" action="updateLog.do?=${healthLog}"
					method="POST">
					<input type="hidden" name="id" value="${healthLog.id}" /> <label
						for="username"><b>User Name:</b></label> <input type="text" id="userName"
						name="userName" value="${healthLog.userName}" /> 
						<br>
						<label for="logDate"><b>Date of Log Entry:</b></label> <input type="text"
						id="logDate" name="logDate" value="${healthLog.logDate}" /> 
						<br>
						<label for="totalSteps"><b>Total Steps:</b></label> <input type="text"
						id="totalSteps" name="totalSteps" value="${healthLog.totalSteps}" />
					<br>
					<label for="sleepMinutes"><b>Sleep in Minutes:</b></label> <input
						type="text" id="sleepMinutes" name="sleepMinutes"
						value="${healthLog.sleepMinutes}" /> 
						<br><label for="waterOunces"><b>Ounces
						of Water:</b></label> <input type="text" id="waterOunces" name="waterOunces"
						value="${healthLog.waterOunces}" /> 
						<br><label for="mood"><b>Mood:</b></label>
					<input type="text" id="mood" name="mood" value="${healthLog.mood}" />
					<input type="submit" value="Update">
				</form>
		
			</div>
		</div>
</body>
</html>