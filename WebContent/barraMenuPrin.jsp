<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<section>
		<div class="navbar navbar-inverse">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">Inicio</a></li>
					<li><a href="index.jsp#seccion1">Quiénes Somos</a></li><!--esta linea nos envia a la seccion inferior dentro de la misma pagina, con el nombre seccion1-->
					<li><a href="index.jsp#seccion2">Noticias</a></li><!--esta linea nos envia a la seccion inferior dentro de la misma pagina, con el nombre seccion2-->
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
					<li><a href="index.jsp#seccion3">Contáctenos</a></li><!--esta linea nos envia a la seccion inferior dentro de la misma pagina, con el nombre seccion1-->
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
</body>
</html>