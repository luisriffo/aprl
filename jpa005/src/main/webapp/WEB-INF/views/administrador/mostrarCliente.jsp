<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Vista Cliente</title>
<link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"></c:url>">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>

	<div class="contenedor">
	 <h3>Selecciona una de las siguientes opciones</h3>   
	 
                <table>
                    <tr>
                    <td><a href="Accidentes">Crear Reporte de Accidentes</a><td>
                </table>
                
                <input type="button" onclick="history.back()" name="volver atrás" value="volver atrás">
         <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	</div>
</body>
</html>