<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Drill Tracker Home</title>
</head>
<body> <c:forEach var="shooter" items="${drill}"><ul>
<li>${shooter.id}</li>
<li>${shooter.name }</li>
<li>${shooter.description }</li></ul>
</c:forEach>
<c:forEach var="dude" items="${user}"><ul>
<li>${dude.id}</li>
<li>${dude.firstName }</li>
<li>${dude.lastName }</li>
</c:forEach></ul>
</body>
</html>