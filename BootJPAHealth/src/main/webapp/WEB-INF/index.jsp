<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
  <!doctype html>
<html lang="en">
<head>
   <title>Health Logs</title>
</head>


<body>


<div class="container">
<blockquote class="blockquote text-center">  <h1><u>
  <p class="bg-info text-black"><h1 style="font-family:american typewriter,serif;"><h1 style="font-size:190%;">Welcome to my Communal Health Log</p></h1></h1></h1></u>
</blockquote>

</div>

<style>
body {
  background-image: url('https://images.unsplash.com/photo-1574169208507-84376144848b?q=80&w=2358&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
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


<form action="getHealth.do" method="POST"><h2><b>
  Search by Id: </b></h2></h2><input type="text" name="id" />
  <input type="submit" value="Submit" />
</form>
<br>
<form action="getHealthUserName.do" method="GET"><h2><b>
  Search by User: </b></h2><input type="text" name="userName" />
  <input type="submit" value="Submit" />
</form>

<div class="container">
    <div class="form-container">
        <h2>Add New Log Entry</h2>
        <form id="createLog" action="createLog.do?=${healthLog}" method="POST">
      <input type="hidden" name="id" value="${healthLog.id}"/>
            <label for="username"><h4><b>User Name:</b></h4></label>
            <input type="text" id="userName" name="userName" value="${healthLog.userName}"/>
            <br>
            <label for="logDate"><b>Date of Log Entry:</b></label>
            <input type="text" id="logDate" name="logDate" value="${healthLog.logDate}"/>
            <br>
            <label for="totalSteps"><b>Total Steps:</b></label>
            <input type="text" id="totalSteps" name="totalSteps" value="${healthLog.totalSteps}"/>
            <br>
            <label for="sleepMinutes"><b>Sleep in Minutes:</b></label>
            <input type="text" id="sleepMinutes" name="sleepMinutes" value="${healthLog.sleepMinutes}"/>
            <br>
            <label for="waterOunces"><b>Ounces of Water:</b></label>
            <input type="text" id="waterOunces" name="waterOunces"value="${healthLog.waterOunces}" />
            <br>
            <label for="mood"><b>Mood:</b></label>
            <input type="text" id="mood" name="mood" value="${healthLog.mood}"/>
            <br>
            <input type="submit" value= "Create Log">
        </form>
    </div>
</div>
    
</body>
</html>