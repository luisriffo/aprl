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
<%-- <jsp:include page="VistaAdministrador.jsp" /> --%>
	<div class="contenedor">
	<h3>Listado de Usuarios del Sistema</h3>
	
<%-- <c:if test="${mensaje != null}">
	<c:out value="${mensaje}" />
</c:if> --%>
	
	<table>
		<tr>
			<th>Nombre</th>
			<th>ID</th>
			<th>Cargo</th>
			<th>Empresa</th>
			<th>Password</th>
			<th>Acciones</th>
		</tr>
		
	<%-- <c:forEach items="${listausers}" var="user"> --%>
		<tr>
			<td>${usua.getNombre()}</td>
			<td>${usua.getId()}</td>
			<td>${usua.getPerfil()}</td>
			<td>${usua.getEmpresa()}</td>
			<td>${usua.getPassword()}</td>
			
			
			<td><a href="${pageContext.request.contextPath}/ModificarUser?id=${user.getId()}">Editar</a> &nbsp; <a href="${pageContext.request.contextPath}/BorrarUsuario?id=${user.getId()}">Eliminar</a></td>
			
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