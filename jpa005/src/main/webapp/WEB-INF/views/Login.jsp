<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema APRL</title>
<link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"></c:url>">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	<h2>Menu</h2>
	<br>
	<a href="menuAdministrador">Administrador</a>
	<a href="menuCliente">Cliente</a>
	<a href="menuProfesional">Profesional</a>
	<%-- <h4>Rut Empresa ${rutEmpresa}, Nombre Empresa ${nombreEmpresa}, Dirección ${direccion}, Contacto ${contacto}, Fono ${telefono}, Email ${mailContacto}</h4> --%>
	<h3>APRL Aplicacion Prevención de Riesgos Laborales</h3>
	<br>
	<h3>Bienvenido</h3>
	<h3>Favor ingresa tu usuario y clave de acceso</h3>
	<c:if test="${lmensaje != null}">
	<h3><c:out value="${lmensaje}"></c:out></h3>
</c:if>
	
	<form action="ValidarLogin" method="post">
		<table>
			<tr>
			<td><label for="user">Usuario</label></td>
			<td><input type="text" placeholder="Usuario" name="user"></td>
			</tr>
			<tr>
			<td><label for="pass">Clave</label></td>
			<td><input type="password" placeholder="Contraseña" name="pass"></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="Ingresar">
	</form>
	</div>
</body>
</html>