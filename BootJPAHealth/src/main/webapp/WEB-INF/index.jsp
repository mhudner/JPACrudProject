<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="getHealth.do" method="POST">
  Find an Entry by ID: <input type="text" name="id" />
  <input type="submit" value="Submit" />
</form>

<form action="getHealthUserName.do" method="GET">
  Search Entries by User: <input type="text" name="userName" />
  <input type="submit" value="Submit" />
</form>

 <div class="form-container">
        <h5>Delete a log entry</h5>
        <form action="delete.do" method="POST">
            <label for="id">Log ID:</label>
            <input type="text" id="id" name="id" />
            <input type="submit" value="Delete" />
        </form>
    </div>

</body>
</html>