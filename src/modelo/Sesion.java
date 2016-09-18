package modelo;

public class Sesion {
	private String id_sesion;
	private String id_usu;
	private String inicio_sesion;
	private String ultimo_acceso;
	private String ip;
	private String host;
	private String servername;
	private String estado;
	
	Conectar cx = new Conectar();
	
	public Sesion(){
		
	}

	/**
	 * @return the id_sesion
	 */
	public String getId_sesion() {
		return id_sesion;
	}

	/**
	 * @param id_sesion the id_sesion to set
	 */
	public void setId_sesion(String id_sesion) {
		this.id_sesion = id_sesion;
	}

	

	/**
	 * @return the id_usu
	 */
	public String getId_usu() {
		return id_usu;
	}

	/**
	 * @param id_usu the id_usu to set
	 */
	public void setId_usu(String id_usu) {
		this.id_usu = id_usu;
	}

	/**
	 * @return the inicio_sesion
	 */
	public String getInicio_sesion() {
		return inicio_sesion;
	}

	/**
	 * @param inicio_sesion the inicio_sesion to set
	 */
	public void setInicio_sesion(String inicio_sesion) {
		this.inicio_sesion = inicio_sesion;
	}

	/**
	 * @return the ultimo_acceso
	 */
	public String getUltimo_acceso() {
		return ultimo_acceso;
	}

	/**
	 * @param ultimo_acceso the ultimo_acceso to set
	 */
	public void setUltimo_acceso(String ultimo_acceso) {
		this.ultimo_acceso = ultimo_acceso;
	}

	/**
	 * @return the ip
	 */
	public String getIp() {
		return ip;
	}

	/**
	 * @param ip the ip to set
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}

	/**
	 * @return the host
	 */
	public String getHost() {
		return host;
	}

	/**
	 * @param host the host to set
	 */
	public void setHost(String host) {
		this.host = host;
	}

	/**
	 * @return the servername
	 */
	public String getServername() {
		return servername;
	}

	/**
	 * @param servername the servername to set
	 */
	public void setServername(String servername) {
		this.servername = servername;
	}

	/**
	 * @return the estado
	 */
	public String getEstado() {
		return estado;
	}

	/**
	 * @param estado the estado to set
	 */
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	public int buscarSesion(Sesion s){
		cx.con();
		String com = "Select * from sesiones "+
				"where id_sesion='"+s.getId_sesion()+"' "+
				"and usuario='"+s.getId_usu()+"'";
		int res = cx.contarFilas(com);
		cx.descon();
		return res;
	}
	
	public int registrarSesion(Sesion s){
		cx.con();
		String com = "Insert into sesiones (" +
				"id_sesion,usuario,inicio_sesion,ultimo_acceso,ip,host,servername,estado) "+
		"values ('"+s.getId_sesion()+"','"+s.getId_usu()+"',now(), now(),"+
				"'"+s.getIp()+"','"+s.getHost()+"','"+s.getServername()+"','1')";
		int res = cx.execQuery(com);
		System.out.println(com);
		cx.descon();
		return res;
	}
	
	public int actualizarSesion(Sesion s){
		cx.con();
		String com = "Update sesiones set "+
				"ultimo_acceso=now() "+
				"where id_sesion='"+s.getId_sesion()+"' "+
				"and usuario='"+s.getId_usu()+"'";
		int res = cx.execQuery(com);
		cx.descon();
		return res;
	}

}
