<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.Afiliado" %>
<jsp:useBean id="d" class="modelo.Afiliado" scope="page"/>
<jsp:useBean id="cx" class="modelo.Conectar" scope="page"/>
<%Afiliado busuario=(Afiliado)request.getAttribute("busuario");%>
<table>
	<tr>
		<td>No. Documento:</td>
		<td><input type="number" size="20" name="num_doc" value="<%=busuario.getIdAfiliado()%>"></td>
		<td>Tipo Documento:</td>
		<td><input type="text" size="20" name="tipo_doc" value="<%=busuario.getTipo_doc()%>"></td>
		<td>Genero:</td>
		<td><input type="text" size="20" name="genero" value="<%=busuario.getGenero()%>"></td>
		<td>Primer Nombre:</td>
		<td><input type="text" size="20" name="prim_nom" value="<%=busuario.getPrim_Nom()%>"></td>
		<td>Segundo Nombre:</td>
		<td><input type="text" size="20" name="seg_nom" value="<%=busuario.getSeg_Nom()%>"></td>
	</tr>		
</table>