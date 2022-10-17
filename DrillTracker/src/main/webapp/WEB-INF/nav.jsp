<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav>
	<a href="index.do">Home</a>
	<c:choose>
		<c:when test="${! empty account }">
			<a href="account.do">Account Details</a>
			<br>
			<a href="logout.do">Log Out</a>
			<br>
		</c:when>
		<c:otherwise>
		<a href="login.do">Log In</a>
		</c:otherwise>
	</c:choose>
</nav>