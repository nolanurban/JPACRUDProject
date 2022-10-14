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
<li>${shooter.name}</li></ul>
</c:forEach>
</body>
</html>