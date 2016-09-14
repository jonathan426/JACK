package modelo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controlador.Login;


@WebServlet("/cLogin")
public class cLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	Login l = new Login();
	Sesion s = new Sesion();
    
    public cLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		l.setId_usu(request.getParameter("f_user"));
		l.setPassword(request.getParameter("f_passw"));
		int v=l.validarUsuario(l);
		if(v==1){
			HttpSession sesionOK = request.getSession();
			s.setId_sesion(sesionOK.getId());
			s.setId_usu(request.getParameter("f_user"));
			if(s.buscarSesion(s)==1){//busca si existe una sesion con el id y el usuario
				s.actualizarSesion(s);//si existe actualiza la fecha
			}else{
				registrarSesion(sesionOK.getId(), request , response); //registra sesion
			}
			Login user = new Login();
			user = l.getUsuario(l);
			sesionOK.setAttribute("usuario", user.getId_usu());
			sesionOK.setAttribute("ip", request.getRemoteAddr());
			response.sendRedirect("menu.jsp");
		}
		else{
			response.sendRedirect("login.jsp?error=v");
		}
	}

	//Sesiones
	protected void registrarSesion(String idsesion,HttpServletRequest request, HttpServletResponse response){
		s.setId_sesion(idsesion);
		s.setId_usu(request.getParameter("f_user"));
		s.setIp(request.getRemoteAddr());
		s.setHost(request.getRemoteHost());
		s.setServername(request.getServerName());
		s.registrarSesion(s);
		
	}
}
