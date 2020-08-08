<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Empleados</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Lista de Empleados</h1>

		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nombre</th>
					<th scope="col">Apellido</th>
					<th scope="col">Email</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${lista}" var="e">
			<tr>
				<th scope="row"><a href="${pageContext.request.contextPath}/mostrarEmpleado/${e.getId()}">${e.getId()}</a></th>
				<td>${e.getNombre()}</td>	 
				<td>${e.getApellido()}</td>	 
				<td>${e.getEmail()}</td>
			</tr>	 
			</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>