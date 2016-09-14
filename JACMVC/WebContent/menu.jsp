<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>

<%@ page import="java.sql.ResultSet"%>
<jsp:useBean id="p" class="modelo.Afiliado" scope="page" />
<jsp:useBean id="cx" class="modelo.Conectar" scope="page" />

<%
	HttpSession sesionOK = request.getSession();

%>
<%@ include file="seguridad.jsp" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href='https://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
	
<link rel="stylesheet" type="text/css" href="bootstrap/css/estilos.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/fonts.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<title>JACK | Sistema de Gestión</title>
<script src="bootstrap/js/jquery.js"></script>
<script type="text/javascript">
		function mostrar(id){
			if(id=="1"){
				$("#acciones").show();
				$("#form_afi").hide();	
			}
			if(id=="2"){
				$("#acciones").hide();
				$("#Afiliar").hide();
			}
			if(id=="3"){
				$("#acciones").hide();
				$("#Afiliar").hide();
			}
			if(id=="4"){
				$("#acciones").hide();
				$("#Afiliar").hide();
			}
			
			
		}
		
		function formularios(id){
			if(id=="a"){
				$("#form_afi").show();
				$("#buscar").hide();
			}
			if(id=="b"){
				$("#form_afi").hide();
				$("#buscar").show();
			}
		}
</script>
</head>

<body>
<header id="head">
		<jsp:include page="logosesion.jsp"></jsp:include>
		
</header>
	
</body>

</html>
	
	
	