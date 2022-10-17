<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Account Deets</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
   <c:choose>
		<c:when test="${! empty account }">
<div class="container-fluid row align-items-center">
<div class="col"></div>
<div class="col-8">
			<table class="table table-bordered">
			<tr><td colspan=3 class="text-center"><%@ include file="nav.jsp"%></td></tr>
			
			<tr>
			<td colspan="3" class="text-center table-dark"><h1>Your Account Details</h1></td>
			<tr>
			<th scope="col" class="text-center">Name</th>
			<th scope="col" class="text-center">Classification</th>
			<th scope="col" class="text-center">Division</th>
			</tr>
			<tbody><tr>
			<td scope="col" class="text-center"><c:out value="${account.firstName } ${account.lastName }" /></td>
			<td scope="col" class="text-center"><c:out value="${account.classification }" /></td>
			<td scope="col" class="text-center"><c:out value="${account.division }" /></td> 
			<tr>
			</table >
			<table class="table table-bordered">
			<tr class="text-center table-dark">
			<td colspan="7" class="text-center table-dark"><h1>Drill Time Tracking</h1></td><tr>
			
			<th scope="col" class="text-center table-dark">Drill</th>
			<th scope="col" class="text-center table-dark">Time</th>
			<th scope="col" class="text-center table-dark">Actual Points</th>
			<th scope="col" class="text-center table-dark">Hit Factor</th>
			<th scope="col" colspan="3" class="text-center table-dark">Date</th>
			</tr>
			<tr>
			<form action="updateData.do" method="POST">
			<c:forEach items="${account.data}" var="d">	
			<td scope="col" class="text-center">${d.name}</td>
			<td scope="col" class="text-center"><input type="text" class="form-control"
								placeholder="${d.time}" aria-label="time"
								name="drillTime"></td>
			<td scope="col" class="text-center"><input type="text" class="form-control"
								placeholder="${d.actualPoints}" aria-label="points"
								name="drillActualPoints"></td>
			<td scope="col" class="text-center"><input type="text" class="form-control"
								placeholder="${d.hitFactor}" aria-label="hitfactor"
								name="drillHitFactor"></td>
			<td colspan="2" scope="col" class="text-center"><input type="text" class="form-control"
								placeholder="${d.date}" aria-label="date"
								name="drillDate"></td>
			<td scope="col" class="text-center"><input name="updateData" value="${d}" type="hidden">
								<input type="submit" name="filmId" value="Update"
								class="btn btn-warning"></td></tr>
	
			</form>
			</c:forEach>
			</tbody></table>
			</div>
<div class="col"></div>
</div>
		</c:when>
		<c:otherwise>
		<h1>Must be logged in to view account</h1>
		</c:otherwise>
	</c:choose>

    <div class="col">
    </div>

	<%--Edit the file nav.jsp to change nav links --%>
	<%-- Output user details --%>

</body>
</html>