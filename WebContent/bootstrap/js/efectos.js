// JavaScript Document
var pagina="http://localhost/pruebas/jack2.1/menu.php";
function ver () {
	document.getElementById('recoger_login').style.display='block';
	}
function cerrar () {
	document.getElementById('recoger_login').style.display='none';
}

function busq () {
	document.getElementById('recoger_busqueda').style.display='block';
}

function cerrbusq(){
	document.getElementById('recoger_busqueda').style.display='none';
}

function afi(){
	document.getElementById('recoger_afiliacion').style.display='block';
}

function cerrafi(){
	document.getElementById('recoger_afiliacion').style.display='none';
}

function consu(){
	document.getElementById('recoger_consulta').style.display='block';
}

function cerrconsu(){
	document.getElementById('recoger_consulta').style.display='none';
}

function actualiza(){
	document.getElementById('recoger_update').style.display='block';
}
function cerractualiza(){
	
	location.href=pagina;
}



$(document).ready(function() {
	
	$('.ir-arriba').click(function(){ //Id del elemento cliqueable
		$('body, html').animate({
			scrollTop:'0px'
		}, 300);
	});
	$(window).scroll(function(){
		if($(this).scrollTop()>0){
			$('.ir-arriba').slideDown(300);
		}else{
			$('.ir-arriba').slideUp(300);
		}
	});
});