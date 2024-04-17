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
</style>

	<style>
h2 {
	text-shadow: 0 0 2px white;
	padding-top: 0%;
}
</style>
	<ul>


		<c:forEach var="healthLog" items="${healthLogs}">


			<li><b>User Name: </b>${healthLog.userName} <br> <b>Entry
					Date: </b>${healthLog.logDate} <br> <b>Total Steps: </b>${healthLog.totalSteps}
				<br> <b>Total Sleep in Minutes: </b>${healthLog.sleepMinutes} <br>
				<b>Ounces of Water Consumed: </b>${healthLog.waterOunces} <br>
				<b>Mood: </b>${healthLog.mood}</li>

			<br>
		</c:forEach>
	</ul>
	<br>


</body>
</html>