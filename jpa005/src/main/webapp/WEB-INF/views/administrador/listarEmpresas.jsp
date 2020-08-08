<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL</title>
<link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"></c:url>">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	<h3>Listado de Empresas Registradas en el Sistema</h3>
	
	<%-- <c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
|	</c:if> --%>

	<table>
		<tr>
			<th>Rut Empresa</th>
			<th>Nombre Empresa</th>
			<th>Dirección</th>
			<th>Contacto</th>
			<th>Teléfono</th>
			<th>Email</th>
			<th>Acciones</th>
		</tr>
		
	<%-- <c:forEach items="${listaempresas}" var="empresa"> --%>
		<tr>
			<td>${empresita.getRutEmpresa()}</td>
			<td>${empresita.getNombreEmpresa()}</td>
			<td>${empresita.getDireccion()}</td>
			<td>${empresita.getContacto()}</td>
			<td>${empresita.getTelefono()}</td>
			<td>${empresita.getMailContacto()}</td>
			
			<td><a href="${pageContext.request.contextPath}/ModificarEmpresa?rut=${empresa.getRutEmpresa()}">Editar</a> &nbsp; <a href="${pageContext.request.contextPath}/BorrarEmpresa?rut=${empresa.getRutEmpresa()}">Eliminar</a></td>
			
		</tr>	
	<%-- </c:forEach> --%>
		
	</table>
	
	<button onclick="window.location.href='${pageContext.request.contextPath}/Administrador';">
	Volver
    </button>
    
    <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	</div>
	
</body>
</html>