<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.Afiliado" %>
<jsp:useBean id="d" class="modelo.Afiliado" scope="page"/>
<jsp:useBean id="cx" class="modelo.Conectar" scope="page"/>
<%Afiliado busuario=(Afiliado)request.getAttribute("busuario");%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="bootstrap/css/estilos.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/fonts.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
</head>
		<form action="cAfiliados" method="post">
			<div class="IBContenedorIzq">
					<div class="TextInfo">
						<div id="div">
							<b>Datos Personales</b>
						</div>
						<div class="btnGuardar">
							<input type="submit" name="button2" id="button2" value="Afiliar">
						</div>
					</div>
					<div id="div" class="InfoBasica">
						<!-- Inicio Panel Izquierdo -->
						<div class="InfoIzq">
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Tipo de documento:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="tipodocumento" id="TipDoc" value="<%=busuario.getTipo_doc()%>">
							</div>
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Primer Nombre:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="PriNom" type="text" id="pri_nom" class="TextboxIb" value="<%=busuario.getPrim_Nom()%>">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Primer Apellido:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="PriApe" type="text" id="pri_ape" class="TextboxIb" value="<%=busuario.getPrim_Ap()%>">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Fecha de Nacimiento:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Fec_nac" type="text" id="txtfecha_nac" class="TextboxIb" value="<%=busuario.getFec_Nac()%>">
							</div>
							
							
						</div>
						<!-- Fin Panel Izquierdo -->
							
						<!-- Inicio Panel Derecho -->
							
						<div class="InfoDer">
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Número de documento:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="NumDoc" type="text" id="num_doc" class="TextboxIb" value="<%=busuario.getIdAfiliado()%>">
							</div>
							
							<div class="TituloCampoIb">
								<b>Segundo Nombre:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="SegNom" type="text" id="seg_nom" class="TextboxIb" value="<%=busuario.getSeg_Nom()%>">
							</div>
							
							<div class="TituloCampoIb">
								<b>Segundo Apellido:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="SegApe" type="text" id="seg_ape" class="TextboxIb" value="<%=busuario.getSeg_Ap()%>">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Género:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Sexo" value="<%=busuario.getGenero()%>">
							</div>
						</div>
						<!-- Fin Panel Derecho -->
						
						<div class="InfoBasica">
							<div class="InfoIzq">
								<br>
							</div>
							
							<div class="InfoDer">
								<br>
							</div>
						</div>
					</div>
				
					<div class="TextInfo">
						<div id="div">
							<b>Datos de Contacto</b>
						</div>
						
					</div>
					<div id="div" class="InfoBasica">
						<!-- Inicio Panel Izquierdo -->
						<div class="InfoIzq">
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Correo electrónico:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Correo" type="text" id="correo" class="TextboxIb" value="<%=busuario.getPersonal()%>">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Dirección:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Nomen" type="text" id="txt_direccion" class="TextboxIb" value="<%=busuario.getNomenclatura()%>">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Tipo de Residente:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input value="<%=busuario.getTipo_afi()%>">								
							</div>
							
						</div>
						
						<div class="InfoDer">
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Teléfono de Contacto:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Num_fij" type="text" id="txttel_fijo" class="TextboxIb" value="<%=busuario.getFijo()%>">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Teléfono Mòvil:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Num_cel" type="text" id="txttel_movil" class="TextboxIb" value="<%=busuario.getMovil()%>">
							</div>
						</div>
					</div>
				
				</div>
							   
		</form>
		
