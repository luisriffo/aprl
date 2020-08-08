<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ver Reporte</title>
<link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"></c:url>">
</head>
<body>
<table>
	<tr>
	<th>Nombre Accidentado</th>
	<th>Fecha Accidente</th>
	<th>Hora Accidente</th>
	<th>Area Accidente</th>
	<th>Tipo Accidente</th>
	<th>Descripcion Accidente</th>
	
	</tr>
	<tr>
	<td>${acci.getNombreAccidentado()}</td>
	<td>${acci.getFechaAccidente()}</td>
	<td>${acci.getHoraAccidente()}</td>
	<td>${acci.getAreaAccidente()}</td>
	<td>${acci.getIdTipoAccidente()}</td>
	<td>${acci.getDescripcionAccidente()}</td>
	
	</tr>
	
	</table>

</body>
</html>