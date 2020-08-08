<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="container">

<h1>Sistema de Empleado</h1>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a href="${pageContext.request.contextPath}/listarEmpleados">Listar Empleados</a>
</nav> 

</div>
</body>
</html>
