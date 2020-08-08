<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear agenda</title>
<link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"></c:url>">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">

	<div class="menu">
	<h3>Menu Profesional</h3>
	<br>
		<a href="Agenda">Crear Agenda</a>
		<br>
		<a href="CrearCapacitacion">Crear Capacitacion</a>
		<br>
		<a href="CrearAsesor">Crear Asesoria</a>
		<br>
		<br>
		<input type="button" onclick="history.back()" name="volver atrás" value="volver atrás">
		<br>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
</div>
	
	</div>

</body>
</html>