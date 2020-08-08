<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APRL - Sistema de Seguridad Ocupacional</title>
<link rel="stylesheet" href="<c:url value="/resources/css/estilos.css"></c:url>">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<div class="contenedor">
	 <h3>Mantencion Usuarios del Sistema</h3>   
	 
                <table>
                    <tr>
                    <td><a href="CrearUsuarios">Crear Nuevo Usuario</a><td>
                    <td><a href="ListaUsuario">Ver Listado de Usuarios</a><td>
                    </tr>
                </table>
                
    	<h3>Mantencion de Clientes Empresas</h3> 
                <table>
                    <tr>
                    <td><a href="CreaEmpresas">Crear Nuevo Cliente Empresa</a><td>
                    <td><a href="VerEmpresitas">Ver Listado de Clientes Empresa</a><td>
                    </tr>
                </table>
                <input type="button" onclick="history.back()" name="volver atrás" value="volver atrás">
         <br/>
		<a href="${pageContext.request.contextPath}/Logout">Cerrar sesión</a><br/>
	</div>
</body>
</html>

