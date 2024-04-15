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

<ul>
<c:forEach var="healthLog" items="${healthLogs}">


<li>User Name: ${healthLog.userName}</li>

<li>Entry Date: ${healthLog.logDate}</li>

<li>Total Steps: ${healthLog.totalSteps}</li>

<li>Total Sleep in Minutes: ${healthLog.sleepMinutes}</li>

<li>Ounces of Water Consumed: ${healthLog.waterOunces}</li>

<li>Mood: ${healthLog.mood}</li>

<br>
</c:forEach>

</ul>
<br>


</body>
</html>