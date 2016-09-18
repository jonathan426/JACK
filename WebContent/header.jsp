<% HttpSession sesionOK = request.getSession(); %>
<head>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/estilos.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/fonts.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<script src="bootstrap/js/jquery.js"></script>
	<script type="text/javascript">
		function mostrar(id){
			if (id=="estudiante"){
				$("#estudiante").show();
				$("#trabajador").hide();
				$("#autonomo").hide();
				$("#paro").hide();
			}
			
			if (id=="trabajador"){
				$("#estudiante").hide();
				$("#trabajador").show();
				$("#autonomo").hide();
				$("#paro").hide();
			}
			
			if (id=="autonomo"){
				$("#estudiante").hide();
				$("#trabajador").hide();
				$("#autonomo").show();
				$("#paro").hide();
			}
			
			if (id=="paro"){
				$("#estudiante").hide();
				$("#trabajador").hide();
				$("#autonomo").hide();
				$("#paro").show();
			}
			
			if (id=="trabajador1"){
				$("#estudiante").hide();
				$("#trabajador").hide();
				$("#autonomo").hide();
				$("#paro").hide();
				$("#trabajador1").show();
				
			}
		}
	</script>
</head>
<jsp:include page="logo.jsp"></jsp:include>

<form action="index.php" method="post">
	Estado Actual:
	<select id="status1" name="status" onChange="mostrar(this.value);">
		<option value="estudiante">Estudiante</option>
		<option value="trabajador">Trabajador</option>
		<option value="autonomo">Autonomo</option>
		<option value="paro">En Paro</option>
	</select>
</form>

<body>
<div id="estudiante" class="element" style="display:none;">
	<h2>Si eres estudiante...</h2>
	<form action="index.php" method="post">
		<p>Nombre:<br/>
		<input type="text" name="nombre" /></p>
		<p>Centro:<br/>
		<input type="text" name="centro" /></p>
		<input type="submit" name="send" value="Enviar"/>
	</form>
</div>

<div id="trabajador" class="element" style="display:none;">
	<h2>Si eres Trabajador...</h2>
	<form action="index.php" method="post">
		<p>Nombre:<br/>
		<input type="text" name="nombre" /></p>
		<p>ID Trabajador:<br/>
		<input type="text" name="centro" /></p>
		<input type="submit" name="send" value="Enviar"/>
	</form>
</div>

<div id="autonomo" class="element" style="display:none;">
	<h2>Si eres autonomo...</h2>
	<form action="index.php" method="post">
		<p>Nombre:<br/>
		<input type="text" name="nombre" /></p>
		<p>Sector:<br/>
		<input type="text" name="centro" /></p>
		<input type="submit" name="send" value="Enviar"/>
	</form>
</div>

<div id="paro" class="element" style="display:none;">
	<h2>Si estas en paro...</h2>
	<form action="index.php" method="post">
		<p>Nombre:<br/>
		<input type="text" name="nombre" /></p>
		<p>Desde Cuando:<br/>
		<input type="text" name="centro" /></p>
		<input type="submit" name="send" value="Enviar"/>
	</form>
</div>





<div id="trabajador1" class="element" style="display:none;">
	<h2>Si eres Trabajador...</h2>
	<form action="index.php" method="post">
		<p>Nombre:<br/>
		<input type="text" name="nombre" /></p>
		<p>ID Trabajador:<br/>
		<input type="text" name="centro" /></p>
		<input type="submit" name="send" value="Enviar"/>
	</form>
</div>

<a value="trabajador1" id="status" href="#" name="status" onClick="mostrar(this.value);">Estudiante</a></li>

</body>