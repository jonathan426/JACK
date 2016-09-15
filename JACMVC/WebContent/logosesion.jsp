<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.ResultSet"%>
<jsp:useBean id="p" class="modelo.Afiliado" scope="page" />
<jsp:useBean id="cx" class="modelo.Conectar" scope="page" />
<% HttpSession sesionOK = request.getSession(); %>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/estilos.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/fonts.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
</head>
	<div class="contenedor">
		<div class="logo">
			<h2>JACK</h2>
				Trabajando unidos en Comunidad
		</div>
		
		<div class="logobta">
			<img alt="bogota" src="bootstrap/img/bogota.jpg" width="100%" height="60%"">
		</div>
		
		<div class="usuario">
			<h3>Bienvenido:</h3>
				<%=sesionOK.getAttribute("usuario") %>
		</div>
		
		<div class="cierresesion">
			<h3>Cerrar Sesión</h3>
		</div>
		<div class="ajustar"></div>
	</div>
	
