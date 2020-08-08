<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear asesoria</title>
<link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"></c:url>">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	<h3>Crear Asesoria</h3>
	<form action="creaasesoria" method="post">

		Nombre Empresa : <select name="empresa">
			<option value="1">Empresa 1</option>
			<option value="2">Empresa 2</option>
			<option value="3">Empresa 3</option>
		</select> 
		<br>
		Fecha Visita : <input type="text" name="visita">
		<br>
		Hora Visita : <input type="text" name="hora">
		<br>
		 <br>Check para aceptar <br> OK <input
			type="checkbox"><br> <input type="submit"
			value="Aceptar">
	</form>
<%-- <jsp:useBean id="date" class="java.util.Date"/ --%>
<!--  Fecha Visita 1: <fmt:formatDate value="${datosusuario.getfechaVisita()}" type="date" pattern="dd-MMM-yyyy"/> -->
<br>




	</div>

</body>
</html>