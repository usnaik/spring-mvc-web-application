<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<br /> Hi ${name} @ ${password}, <br /> <br />
		<table class="table table-striped">
			<caption>Your Todos are</caption>
			<thead>
				<tr>
					<th>List Item</th>
					<th>Description</th>
					<th>Target Date</th>
					<th>Is Completed?</th>
					<th />
				</tr>
			</thead>
			<c:forEach items="${todos}" var="todo">
				<tbody>
					<tr>
						<td>${todo.id}</td>
						<td>${todo.desc}</td>
						<td> <fmt:formatDate pattern="dd/MMM/yyyy"
									value="${todo.targetDate}" /> </td>						
						<td>${todo.done}</td>
						<td><a type=button class="btn btn-info" href="/update-todo?id=${todo.id}">Update</a></td>
						<td><a type=button class="btn btn-warning" href="/delete-todo?id=${todo.id}">Delete</a></td>
					</tr>
				</tbody>
			</c:forEach>

		</table>
		<div>
			<a type="button" class="btn btn-success" href="/add-todo">Add</a>
		</div>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>