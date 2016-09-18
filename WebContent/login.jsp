<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String msj = request.getParameter("error");
	if(msj==null)
	{
		msj="";
	}
	else
	{
		if(msj.equals("v"))
		{
			msj="Datos incorrectos. Por favor intente de nuevo. <br> Contacte con el administrador.";
		}
		else
		{
			msj="Acceso solo a personas autorizadas";
		}
	}
	
 %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/estilos.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/fonts.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script>
		$(function(){
			$('#login').click(function(){
				$(this).next('#login-content').slideToggle();
				$(this).toggleClass('active');
				
				if($(this).hasClass('active')) $(this).find('span').html('&#x25B2;')
					else $(this).find('span').html('&#x25BC;')
			})
		});
	</script>

</head>
	<nav class="acceder">
		<ul>
			<li>
				<a id="login" href="#">
					Acceder <span>&#x25BC</span>
				</a>
				<div id="login-content" >
					<label style="color:red;"><b><%=msj %></b></label>
					<form action="cLogin" method="post">
						<input type="text" id="user" name="f_user" placeholder="Usuario" required>
						<input type="password" id="pass" name="f_passw" placeholder="Contraseña"required/>
						<input type="submit" id="submit" name="opc" value="Iniciar Sesión"/>
					</form>
				</div>
			</li>
		</ul>
	</nav>