<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Drill Tracker Home</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
<div class="container text-center">
  <div class="row">
    <div class="col">
<!--       1 of 3
 -->    </div>
    <div class="col-6">
<!--       2 of 3 (wider)
 -->    </div>
    <div class="col">
<!--       3 of 3
 -->    </div>
  </div>
  <div class="row">
    <div class="col">
<!--       1 of 3
 -->    </div>
    <div class="col-5">
 			<table class="table table-bordered">
			<tr><td colspan="4" class="text-center table-dark"><h1>Drill Tracker</h1></td>
			</tr>
			<tr><td  colspan="4"><h2>Log In</h2></td>
			<tr><td  colspan="4">
			<form action="login.do" method="POST">
				<%-- Error messages --%>
				<input type="text" name="email" value="E-mail"><br>
				<input type="password" name="password" value="password"/><br>
				<input type="submit" value="Log In" > 
			</form>
			</tr><tr><em>"Having a bad time is nothing in compared to not tracking a metric."</em></tr>
			</table>

    </div>
    <div class="col">
<!--       3 of 3
 -->    </div>
  </div>
</div>
</body></html>