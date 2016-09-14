package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Afiliado;

/**
 * Servlet implementation class cAfiliados
 */
@WebServlet("/cAfiliados")
public class cAfiliados extends HttpServlet {
	Afiliado afi = new Afiliado();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cAfiliados() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		afi.setTipo_doc(request.getParameter("tipodocumento"));
		afi.setIdAfiliado(Integer.valueOf((request.getParameter("NumDoc"))));  
		afi.setPrim_Nom(request.getParameter("PriNom"));
		afi.setSeg_Nom(request.getParameter("SegNom"));
		afi.setPrim_Ap(request.getParameter("PriApe"));
		afi.setSeg_Ap(request.getParameter("SegApe"));
		afi.setGenero(request.getParameter("Sexo"));
		afi.setFec_Nac(request.getParameter("Fec_nac"));
		afi.setNomenclatura(request.getParameter("Nomen"));
		afi.setMovil(request.getParameter("Num_cel"));
		afi.setFijo(request.getParameter("Num_fij"));
		afi.setPersonal(request.getParameter("Correo"));
		afi.setTipo_afi(Integer.valueOf((request.getParameter("tipo_afi"))));
		afi.registrar_afiliado(afi);
		response.sendRedirect("menu.jsp");
		System.out.println(afi.getIdAfiliado()+"-Paso por el controlador cAfiliados");
	}

}
