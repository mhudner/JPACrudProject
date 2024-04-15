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

<form action="createLog.do" method="GET">
					<h1>Add A Log</h1>

					<label class="form-label">User name </label> 
					<input class="form-control" type="text" name="userName" required />
					
					
					<label class="form-label">Log Date</label> 
					<input class="form-control" type="text" name="logDate" /> 
					
					
					<label class="form-label">Total Steps</label>
					<input class="form-control" type="text" name="totalSteps" />
		
			
					<label class="form-label">Sleep in Minutes</label> 
					<input class="form-control" type="text" name="sleepMinutes" /> 
					
					<label class="form-label">Ounces of Water </label> 
					<input class="form-control" type="text" name="waterOunces" /> 
					
					<label class="form-label">Mood</label>
					<input class="form-control" type="text" name="mood"/>
		
						
					<input class="btn btn-primary" type="submit" value="submit" />
				</form>

</body>
</html>