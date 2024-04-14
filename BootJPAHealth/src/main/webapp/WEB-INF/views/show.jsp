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
<li>${healthLog.userName}</li>

<li>${healthLog.logDate}</li>

<li>${healthLog.totalSteps}</li>

<li>${healthLog.sleepMinutes}</li>

<li>${healthLog.waterOunces}</li>

<li>${healthLog.mood}</li>
</ul>

<ul>
<c:forEach var="healthLog" items="${healthLogs}">


<li>${healthLog.userName}</li>

<li>${healthLog.logDate}</li>

<li>${healthLog.totalSteps}</li>

<li>${healthLog.sleepMinutes}</li>

<li>${healthLog.waterOunces}</li>

<li>${healthLog.mood}</li>

<br>
</c:forEach>

</ul>
<br>
<%-- <ul>



<li>${healthLog.userName}</li>

<li>${healthLog.logDate}</li>

<li>${healthLog.totalSteps}</li>

<li>${healthLog.sleepMinutes}</li>

<li>${healthLog.waterOunces}</li>

<li>${healthLog.mood}</li>



</ul> --%>

</body>
</html>