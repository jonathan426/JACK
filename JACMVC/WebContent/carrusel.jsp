<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/estilos.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/fonts.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
</head>
<div>
<section id="d">
<div id="container-fluid" align="center">	
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
					<li data-target="#myCarousel" data-slide-to="5"></li>
					<li data-target="#myCarousel" data-slide-to="6"></li>
					<li data-target="#myCarousel" data-slide-to="7"></li>
					<li data-target="#myCarousel" data-slide-to="8"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
				
					<div class="item active">
						<img alt="Cordoba" src="bootstrap/img/Cordoba.JPG" width="600px">
						<div class="carousel-caption">
							<h3>Humedal de Córdoba</h3>
							<p>El humedal Córdoba es uno de los trece humedales de la sabana de Bogotá. Se encuentra ubicado en la localidad de Suba.</p>
						</div>
					</div>
					<div class="item">
						<img alt="Chico" src="bootstrap/img/Chico.JPG" width="600px">
						<div class="carousel-caption">
							<h3>Parque del Chicó</h3>
							<p>Forma parte de una finca que fue propiedad de Mercedes Sierra de Pérez, quien le  dejó el parque a la municipalidad local con el fin de preservarla. Los diseños originales de los jardines y el diseño del parque es en gran parte gracias a su visión, y la preservación del Parque Chicó le permite volver en el tiempo.</p>
						</div>
					</div>
					<div class="item">
						<img alt="ParqueSB" src="bootstrap/img/ParqueSB.JPG" width="600px">
						<div class="carousel-caption">
								<h3>Parque Simón Bolivar</h3>
								<p>El humedal Córdoba es uno de los trece humedales de la sabana de Bogotá. Se encuentra ubicado en la localidad de Suba.</p>
						</div>
					</div>
					<div class="item">
						<img alt="ParqueJD" src="bootstrap/img/ParqueJD.JPG" width="600px">
						<div class="carousel-caption">
							<h3>Parque Jaime Duque</h3>
							<p>El parque fue inaugurado en febrero de 1983, gracias a la iniciativa de Jaime Duque Grisales, un piloto de Avianca que quiso crear un espacio de recreación para toda la familia.</p>
						</div>
					</div>
					<div class="item">
						<img alt="Banderas" src="bootstrap/img/Banderas.JPG" width="600px">
						<div class="carousel-caption">
							<h3>Parque Banderas</h3>
							<p>Es una serie de esculturas construidas en las inmediaciones del antiguo Aeropuerto de Techo de la ciudad. El autor fue el escultor bogotano Alonso Neira Martínez. El monumento consta de 120 mujeres en un total de 21 pilares. Fue inaugurado en 1948 con motivo de la IX Conferencia Panamericana,  la cual dio lugar a la creación de la Organización de los Estados Americanos (OEA).</p>
						</div>
					</div>
					<div class="item">
						<img alt="ParqueTM" src="bootstrap/img/ParqueTM.JPG" width="600px">
						<div class="carousel-caption">
							<h3>Parque Tercer Milenio</h3>
							<p>Este proyecto nació en 1998, como parte de la Política de Recuperación de Bogotá, y surgió debido a la necesidad de darle la  bienvenida al nuevo milenio, además, porque el escenario se convirtió en el primer paso para brindarle un respiro más limpio a esta zona denominada atiguamente como la “calle del cartucho” o antiguo barrio Santa Inés.</p>
						</div>
					</div>
					<div class="item">
						<img alt="Jaboque" src="bootstrap/img/Jaboque.JPG" width="600px">
						<div class="carousel-caption">
							<h3>Humedal Jaboque</h3>
							<p>En lengua de los Muiscas, Jaboque puede significar “Tierra de Abundancia”, este humedal se encuentra ubicado en la localidad de Engativá.</p>
						</div>
					</div>
					<div class="item">
						<img alt="PlazaBolivar" src="bootstrap/img/PlazaBolivar.JPG" width="600px">
						<div class="carousel-caption">
							<h3>plaza de Bolivar</h3>
							<p>Ubicada al frente de la Catedral Primada un poco como el Time Square en Nueva York o de Trafalgar, en Londres. Está situado en el centro de la ciudad, al oeste de La Candelaria.</p>
						</div>
					</div>
					<div class="item">
						<img alt="Conejera" src="bootstrap/img/Conejera.JPG" width="600px">
						<div class="carousel-caption">
							<h3>Humedal La Conejera</h3>
							<p>Es el humedal insignia de la ciudad, fue allí donde nació el movimiento ambiental en defensa de los humedales, pasó de ser de uno de los ecosistemas más afectados en los años noventa, a ser uno de los más recuperados en la actualidad.</p>
						</div>
					</div>
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				
			</div>
			
</div>
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$('.myCarousel').carousel({
			interval:3000
		});
	});
</script>
</section>
</div>