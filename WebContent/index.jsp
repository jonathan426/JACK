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
	<meta name="viewport" content="width=device-width, initial-scale=1"><!--esta linea hace referencia a la caja de comentarios-->
	<link rel="stylesheet" type="text/css" href="bootstrap/css/estilos.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/fonts.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<link href='https://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'><!--Fuentes de Google para la caja de comentarios-->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"><!--Iconos para la caja de comentarios-->
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script><!--con esta linea se genera el enlace y llamado de jquery.min.js-->
	<script src="bootstrap/js/bootstrap.js"></script><!--con esta linea se genera el enlace y llamado de bootstrap.js-->
	<script src="bootstrap/js/jquery.js"></script><!--con esta linea se genera el enlace y llamado de jquery.js-->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<title>JACK | Sitio Oficial</title>
	<script>
		$(function(){
			$('#login').click(function(){
				$(this).next('#login-content').slideToggle();
				$(this).toggleClass('active');
				
				if($(this).hasClass('active')) $(this).find('span').html('&#x25B2;')
					else $(this).find('span').html('&#x25BC;')
			})
		});
	</script><!--en este script se avtiva la rotacion del carrusel-->
</head>
<body>
	<header id="head">
			<jsp:include page="logo.jsp"></jsp:include>
	</header>
	
	<div id="Principal"><!--en esta linea referenciamos parametros verificables en estilos.jsp-->
			<jsp:include page="barraMenuPrin.jsp"></jsp:include><!--esta linea llama al enlace footer-->
		<div class="container-fluid">
			<jsp:include page="nosotros.jsp"></jsp:include><!--esta linea llama al enlace noticias-->
			<jsp:include page="noticias.jsp"></jsp:include><!--esta linea llama al enlace noticias-->
		</div>
	</div>
	
	
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<a class="go-top" href="#"><img alt="Arriba" src="bootstrap/img/top-arrow.png"></a>
	<script><!--este script hace referencia a el uso del click del mouse en el corrousel-->
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
<a name="seccion3"></a> <!--/esta linea nos remite de el enlace en la barra de menu-->
	<jsp:include page="footer.jsp"></jsp:include><!--esta linea llama al enlace footer-->
</footer>
</html>