<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
		<form action="cAfiliados" method="post">
			<label id="item_me">Datos Personales</label>
			<table width="198" border="0" align="center">
				<tbody>
					<tr>
						<td width="192"><label for="TipDoc">Tipo de Documento: </label>
							<select name ="tipodocumento" id="TipDoc">
								<option value = "1" selected>Seleccione tipo de documento
								<option value = "CC">CC
								<option value = "CE">CE
								<option value = "CE">TI
							</select>
						</td>
				   </tr>
					<tr>
						<td width="192"><label for="NumDoc">Número Documento: </label>
						<input name="NumDoc" type="text" id="num_doc" align="right"></td>
				   </tr>
				   
				   <tr>
						<td width="192"><label for="PriNom">Primer Nombre: </label>
						<input name="PriNom" type="text" id="pri_nom" align="right"></td>
				   </tr>
				   <tr>
						<td width="192"><label for="SegNom">Segundo Nombre: </label>
						<input name="SegNom" type="text" id="seg_nom"></td>
				   </tr>
				   <tr>
						<td width="192"><label for="PriApe">Primer Apellido: </label>
						<input name="PriApe" type="text" id="pri_ape"></td>
				   </tr>
				   <tr>
						<td width="192"><label for="SegApe">Segundo Apellido: </label>
						<input name="SegApe" type="text" id="seg_ape"></td>
				   </tr>
				   
				   <tr>
						<td width="192"><label for="Genero">Genero: </label>
							<select name ="Sexo">
								<option value = "1" selected>seleccione genero
								<option value = "M">Masculino	
								<option value = "F">Femenino
							</select>
						</td>
				   </tr>
				   <tr>
						<td width="192"><label for="Fec_nac">Fecha de Nacimiento: </label>
						<input name="Fec_nac" type="text"></td>
				   </tr>
				   
				   <tr>
						<td width="192"><label for="Nomen">Dirección: </label>
						<input name="Nomen" type="text"></td>
				   </tr>
				   <tr>
						<td width="192"><label for="Num_cel">Teléfono Móvil: </label>
						<input name="Num_cel" type="text"></td>
				   </tr>
				   <tr>
						<td width="192"><label for="Num_fij">Teléfono Fijo: </label>
						<input name="Num_fij" type="text"></td>
				   </tr>
				   <tr>
						<td width="192"><label for="Correo">Correo electrónico: </label>
						<input name="Correo" type="text"></td>
				   </tr>
				   <tr>
						<td width="192"><label for="tipo afiliado">Tipo de Afiliado: </label>
							<select name ="tipo_afi">
								<option value = "0" selected>seleccione Tipo de Afiliado
								<option value = "1">1. Arrendatario	
								<option value = "2">2. Propietario
								<option value = "3">3. Comerciante
							</select>
						</td>
				   </tr>
				   
				   <tr>
					 <td align="right"><input type="submit" name="button2" id="button2" value="Afiliar"></td>
				   </tr>
				   
				</tbody>
			</table>
		</form>
		
