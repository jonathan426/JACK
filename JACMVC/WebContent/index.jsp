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
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="Juntas de Accion Comunal, jacs, comunales, aplicaciones comunales, asojuntas, localidades"/>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta name="keywords" content="aplicaciones jacs, diseño comunal, comunales, juntas, accion comunal web"/>
	<title>JACK | Sitio Oficial</title>
	<link href='https://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" type="text/css" href="bootstrap/css/estilos.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/fonts.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	<script src="bootstrap/js/jquery.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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
<body>
	<header id="head">
			<jsp:include page="logo.jsp"></jsp:include>
	</header>
	
	<div id="Principal">
		
		<div>
		<section>
		<div class="navbar navbar-inverse">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">Inicio</a></li>
					<li><a href="principal.html#seccion1">Quiénes Somos</a></li>
					<li><a href="principal.html#seccion2">Noticias</a></li>
					<li><a href="">Eventos</a></li>
					<li class="dropdown">
						<a href="" class="dropdown-toggle" data-toggle="dropdown">Galeria<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="">Fotos</a></li>
							<li><a href="www.youtube.com">Videos</a></li>
							<li><a href="">Otros</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="" class="dropdown-toggle" data-toggle="dropdown">Directorio<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="www.portalterritorial.gov.co/dir_entidades.shtml">Entidades publicas</a></li>
							<li><a href="www.bogota.gov.co/article/directorio-de-entidades-distritales-y-privadas">Entidades Distritales y Privadas</a></li>
							<li><a href="">Submenu</a></li>
						</ul>
					</li>
					<li><a href="">Contáctenos</a></li>
				</ul>
				<div class="nav navbar-right">
					<nav class="acceder">
						<ul>
							<li>
								<a id="login" href="#">
									Acceder <span>&#x25BC</span>
								</a>
								<div id="login-content">
									<form action="cLogin" method="post">
										<input type="text" id="user" name="f_user" placeholder="Usuario" required>
										<input type="password" id="pass" name="f_passw" placeholder="Contraseña"required/>
										<input type="submit" id="submit" name="opc" value="Iniciar Sesión"/>
									</form>
								</div>
							</li>
						</ul>
					
					</nav>
				</div>
			</div>
		</div>
		
		<div>
			<jsp:include page="carrusel.jsp"></jsp:include>	
		</div>
		</section>
		</div>
	</div>
	
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<a class="go-top" href="#"><img alt="Arriba" src="bootstrap/img/top-arrow.png"></a>
	<script>
		$(document).ready(function() {
	
			$('.go-top').click(function(){ //Id del elemento cliqueable
				$('body, html').animate({
					scrollTop:'0px'
				}, 300);
			});
			$(window).scroll(function(){
				if($(this).scrollTop()>0){
					$('.go-top').slideDown(300);
				}else{
					$('.go-top').slideUp(100);
					}
			});
		});
	</script>
</body>
<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</html>