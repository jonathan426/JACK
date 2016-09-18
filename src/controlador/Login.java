package controlador;

import java.sql.ResultSet;

import modelo.Conectar;

public class Login 
{
	private String id_usu;
	private String password;
	private int rol;
	
	Conectar cx = new Conectar();
	
	
	public Login(){
		
	}


	

	public String getId_usu() {
		return id_usu;
	}




	public void setId_usu(String id_usu) {
		this.id_usu = id_usu;
	}




	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}


	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}


	/**
	 * @return the rol
	 */
	public int getRol() {
		return rol;
	}


	/**
	 * @param rol the rol to set
	 */
	public void setRol(int rol) {
		this.rol = rol;
	}
	
	//Métodos y Operaciones
	public int validarUsuario(Login l)
	{
		cx.con();
		String com ="SELECT * FROM usuarios where id_usu='"+l.getId_usu()+"' AND clave='"+l.getPassword()+"'";
		int res = cx.contarFilas(com);
		cx.descon();
		System.out.println(com);
		return res;
		
	}
	
	public Login getUsuario(Login l)
	{
		cx.con();
		Login user = new Login();
		String com = "SELECT * FROM usuarios "+
				"WHERE id_usu='"+l.getId_usu()+"' "+
				"AND clave='"+l.getPassword()+"'";
		try 
		{
			ResultSet rs = cx.getDatos(com);
			while(rs.next())
			{
				user.setId_usu(rs.getString(1));
			}
			cx.descon();
			return user;
		} catch (Exception e) 
		  {
			return user=null;
		  }
	}
}