<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ver Agenda</title>
<link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"></c:url>">
</head>
<body>
	<table>
	<tr>
	<th>Nombre Empresa</th>
	<th>Fecha Visita</th>
	<th>Hora Visita</th>
	</tr>
	<tr>
	<td>${agenda.getRutEmpresa()}</td>
	<td>${agenda.getFechaVisita()}</td>
	<td>${agenda.getHoraVisita()}</td>
	</tr>
	
	</table>
</body>
</html>