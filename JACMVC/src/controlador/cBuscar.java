package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Afiliado;

/**
 * Servlet implementation class cBuscar
 */
@WebServlet("/cBuscar")
public class cBuscar extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	String msj = "";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cBuscar() {
        super();
        // TODO Auto-generated constructor stub
    }

		/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Afiliado afi = new Afiliado();
		afi.setIdAfiliado(Integer.valueOf(request.getParameter("num_doc")));
		Afiliado busuario=Afiliado.buscar_Afiliado(afi);
		if(busuario!=null){
			request.setAttribute("busuario", busuario);
			request.getRequestDispatcher("menu.jsp").forward(request, response);
		}else{
			PrintWriter out=response.getWriter();
			out.print("Error, no se encontró el usuario:");
			
		}
		/*response.sendRedirect("menu.jsp");
		System.out.println(afi.getIdAfiliado()+"-Paso por el control cBuscar");*/
	}
	
	

}
