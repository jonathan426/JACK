<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>

<%@ page import="java.sql.ResultSet"%>
<%@page import="modelo.Afiliado" %>
<jsp:useBean id="p" class="modelo.Afiliado" scope="session" />
<jsp:useBean id="cx" class="modelo.Conectar" scope="session" />
<%Afiliado busuario=(Afiliado)request.getAttribute("busuario");%>
<%String mensaje = (String)request.getParameter("prueba");
	if(mensaje==null){
		mensaje="Datos no recibidos";		
	}
	else{
		mensaje="Datos recibidos";
	}
%>

<%
	HttpSession sesionOK = request.getSession();
%>
<%@ include file="seguridad.jsp" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link href='https://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
	
<link rel="stylesheet" type="text/css" href="bootstrap/css/estilos.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/fonts.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<title>JACK | Sistema de Gestión</title>
<script src="bootstrap/js/jquery.js"></script>
</head>

<body>
<div>
	<jsp:include page="logosesion.jsp"></jsp:include>
</div>

	<div class="contenido">
		<div class="NombIzq">
			Sistema de Información JAC
		</div>
		
		<div class="buscador">
			<form id="buscar" action="cBuscar" method="post">
					<div class="form-elem textfield"><input type="text" name="num_doc" placeholder="Buscar..." required></div>
					<div class="form-elem submit-btn"><input type="submit" name="buscar" Value="Buscar"></div>
				</form>
		</div>
		
		<div class="formularios">
			<div class="alertas">
				<br>
			</div>
			
			
		</div>
		<div class="ajustar"></div>
	</div>
	<div class="ajustar"></div>
</body>
<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</html>
	
	
	