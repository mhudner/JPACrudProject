<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Health Log</title>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2>Update Log</h2>
        <form id="updateLog" action="updateLog.do?=${healthLog}" method="POST">
            <input type="hidden" name="id" value="${healthLog.id}"/>
            <label for="username">User Name:</label>
            <input type="text" id="userName" name="userName" value="${healthLog.userName}"/>
            <label for="logDate">Date of Log Entry:</label>
            <input type="text" id="logDate" name="logDate" value="${healthLog.logDate}"/>
            <label for="totalSteps">Total Steps:</label>
            <input type="text" id="totalSteps" name="totalSteps" value="${healthLog.totalSteps}"/>
            <label for="sleepMinutes">Sleep in Minutes:</label>
            <input type="text" id="sleepMinutes" name="sleepMinutes" value="${healthLog.sleepMinutes}"/>
            <label for="waterOunces">Ounces of Water:</label>
            <input type="text" id="waterOunces" name="waterOunces"value="${healthLog.waterOunces}" />
            <label for="mood">Mood:</label>
            <input type="text" id="mood" name="mood" value="${healthLog.mood}"/>
            <input type="submit" value= "Update">
        </form>
    </div>
<div>
        <h1>Log Entry</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>User Name</th>
                <th>Log Date</th>
                <th>Total Steps</th>
                <th>Sleep in Minutes</th>
                <th>Ounces of Water</th>
                <th>Mood</th>
                <th>Delete</th>
                
            </tr>
               
            <tr>
                <td>${healthLog.id}</td>
                <td>${healthLog.userName}</td>
                <td>${healthLog.logDate}</td>
                <td>${healthLog.totalSteps}</td>
                <td>${healthLog.sleepMinutes}</td>
                <td>${healthLog.waterOunces}</td>
                <td>${healthLog.mood}</td>
                <td><form action="deleteEntry.do" onsubmit="return window.confirm('Are you sure you want to delete this entity?');" method="POST">
										<div class="form-group">
											<input type="hidden" class="form-control" id="id" name="id"
												value="<c:out value='${healthLog.id}' />">
										</div>
										<button type="submit"  class="btn btn-danger">Delete
											this Entry</button>
									</form>
									</td>
            </tr>
    
        </table>
    </div>
</div>

</body>
</html>