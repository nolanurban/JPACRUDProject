<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Drill Tracker Home</title>
</head>
<body> 
<div class="container text-center">
  <div class="row">
    <div class="col">
    </div>
    <div class="col">
<c:forEach var="dude" items="${user}"><ul>
<li>${dude}</li>
</c:forEach></ul><br>
<c:forEach var="data" items="${drillData}"><ul>
<li>${data}</li><br>
</c:forEach></ul>
    </div>
    <div class="col">
    </div>
  </div>
</div>



</body>
</html>