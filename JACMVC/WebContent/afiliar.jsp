<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
								<select name="tipodocumento" id="TipDoc" required>
									<option value="1" selected>Seleccione tipo de Documento</option>
									<option value="CC">Cédula de Ciudadanía</option>
									<option value="CE" >Cédula de Extranjeria</option>
									<option value="TI" >Tarjeta de Identidad</option>
								</select>
							</div>
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Primer Nombre:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="PriNom" type="text" id="pri_nom" class="TextboxIb">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Primer Apellido:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="PriApe" type="text" id="pri_ape" class="TextboxIb">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Fecha de Nacimiento:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Fec_nac" type="text" id="txtfecha_nac" class="TextboxIb">
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
								<input name="NumDoc" type="text" id="num_doc" class="TextboxIb">
							</div>
							
							<div class="TituloCampoIb">
								<b>Segundo Nombre:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="SegNom" type="text" id="seg_nom" class="TextboxIb">
							</div>
							
							<div class="TituloCampoIb">
								<b>Segundo Apellido:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="SegApe" type="text" id="seg_ape" class="TextboxIb">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Género:</b>
							</div>
							<div class="ContenedorCampoIb">
								<select name="Sexo">
									<option value="1" selected>Seleccione Género</option>
									<option value="M">Masculino</option>
									<option value="F">Femenino</option>
								</select>
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
								<input name="Correo" type="text" id="correo" class="TextboxIb">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Dirección:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Nomen" type="text" id="txt_direccion" class="TextboxIb">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Tipo de Residente:</b>
							</div>
							<div class="ContenedorCampoIb">
								<select name="tipo_afi">
									<option value="1">1. Arrendatario</option>
									<option value="2">2. Propietario</option>
									<option value="3">3. Arrendatario</option>
									<option>Comerciante</option>
								</select>
							</div>
							
						</div>
						
						<div class="InfoDer">
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Teléfono de Contacto:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Num_fij" type="text" id="txttel_fijo" class="TextboxIb">
							</div>
							
							<div class="TituloCampoIb">
								<span class="Asterisk">*</span>
								<b>Teléfono Mòvil:</b>
							</div>
							<div class="ContenedorCampoIb">
								<input name="Num_cel" type="text" id="txttel_movil" class="TextboxIb">
							</div>
						</div>
					</div>
				
				</div>
							   
		</form>

		
