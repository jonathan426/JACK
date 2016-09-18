<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<title>Insert title here</title>
<link rel="stylesheet" href="estilos.css">
</head>
<body>
	<div class="comments-container">
		<p>Commentarios de los Usuarios</p>
		<ul id="comments-list" class="comments-list">
			<li>
				<div class="comment-main-level"><!-- Avatar -->
					<div class="comment-box">
						<div class="comment-head">
							<input type="text" size="15" maxlength="30" value="Nombre" name="nombre">
						</div>
						<div class="comment-content">	
							<textarea name="comentarios" rows="3" cols="100%">Escribe aquí tus comentarios</textarea>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="comment-main-level"><!-- Avatar -->
					<div class="comment-avatar">
						<img src="bootstrap/img/avatar1.jpg" alt="">
					</div><!-- Contenedor del Comentario -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name by-author">Dignatario</h6>
							<span>hace 20 minutos</span>
							<i class="fa fa-reply"></i>
							<i class="fa fa-heart"></i>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						</div>
					</div>
				</div><!-- Respuestas de los comentarios -->
				<ul class="comments-list reply-list">
					<li><!-- Avatar -->
						<div class="comment-avatar">
							<img src="bootstrap/img/avatar2.jpg" alt="">
						</div><!-- Contenedor del Comentario -->
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name">Invitado</h6>
								<span>hace 10 minutos</span>
								<i class="fa fa-reply"></i>
								<i class="fa fa-heart"></i>
							</div>
							<div class="comment-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							</div>
						</div>
					</li>
					<li><!-- Avatar -->
						<div class="comment-avatar">
							<img src="bootstrap/img/avatar1.jpg" alt="">
						</div><!-- Contenedor del Comentario -->
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name by-author">Dignatario</h6>
								<span>hace 10 minutos</span>
								<i class="fa fa-reply"></i>
								<i class="fa fa-heart"></i>
							</div>
							<div class="comment-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							</div>
						</div>
					</li>
				</ul>
			</li>
			<li>
				<div class="comment-main-level"><!-- Avatar -->
					<div class="comment-avatar">
						<img src="bootstrap/img/avatar2.jpg" alt="">
					</div><!-- Contenedor del Comentario -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name">Invitado</h6>
							<span>hace 10 minutos</span>
							<i class="fa fa-reply"></i>
							<i class="fa fa-heart"></i>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>