package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Afiliado 
{
	//Atributos de la Clase
	private int idAfiliado;
	private String Tipo_doc;
	private String Genero;
	private String Prim_Nom;
	private String Seg_Nom;
	private String Prim_Ap;
	private String Seg_Ap;
	private String Fec_Nac;
	private String Nomenclatura;
	private String Movil;
	private String Fijo;
	private String Personal;
	private String Fec_afi;
	private int Afi_estado;
	private int Tipo_afi;
	private int Junta;
	
	Conectar cx = new Conectar();
	
	

	public int getIdAfiliado() {
		return idAfiliado;
	}


	public void setIdAfiliado(int idAfiliado) {
		this.idAfiliado = idAfiliado;
	}


	public String getTipo_doc() {
		return Tipo_doc;
	}


	public void setTipo_doc(String tipo_doc) {
		Tipo_doc = tipo_doc;
	}


	public String getGenero() {
		return Genero;
	}


	public void setGenero(String genero) {
		Genero = genero;
	}


	public String getPrim_Nom() {
		return Prim_Nom;
	}


	public void setPrim_Nom(String prim_Nom) {
		Prim_Nom = prim_Nom;
	}


	public String getSeg_Nom() {
		return Seg_Nom;
	}


	public void setSeg_Nom(String seg_Nom) {
		Seg_Nom = seg_Nom;
	}


	public String getPrim_Ap() {
		return Prim_Ap;
	}


	public void setPrim_Ap(String prim_Ap) {
		Prim_Ap = prim_Ap;
	}


	public String getSeg_Ap() {
		return Seg_Ap;
	}


	public void setSeg_Ap(String seg_Ap) {
		Seg_Ap = seg_Ap;
	}


	public String getFec_Nac() {
		return Fec_Nac;
	}


	public void setFec_Nac(String fec_Nac) {
		Fec_Nac = fec_Nac;
	}


	public String getNomenclatura() {
		return Nomenclatura;
	}


	public void setNomenclatura(String nomenclatura) {
		Nomenclatura = nomenclatura;
	}


	public String getMovil() {
		return Movil;
	}


	public void setMovil(String movil) {
		Movil = movil;
	}


	public String getFijo() {
		return Fijo;
	}


	public void setFijo(String fijo) {
		Fijo = fijo;
	}


	public String getPersonal() {
		return Personal;
	}


	public void setPersonal(String personal) {
		Personal = personal;
	}


	public String getFec_afi() {
		return Fec_afi;
	}


	public void setFec_afi(String fec_afi) {
		Fec_afi = fec_afi;
	}


	public int getAfi_estado() {
		return Afi_estado;
	}


	public void setAfi_estado(int afi_estado) {
		Afi_estado = afi_estado;
	}


	public int getTipo_afi() {
		return Tipo_afi;
	}


	public void setTipo_afi(int tipo_afi) {
		Tipo_afi = tipo_afi;
	}


	public int getJunta() {
		return Junta;
	}


	public void setJunta(int junta) {
		Junta = junta;
	}


	//Método Constructor
	public Afiliado()
	{
		super();
	}
	
	
	private Afiliado(int idAfi, String Tipo_doc, String sexo, String prim_Nom, String seg_Nom, String prim_Ap, String seg_Ap, 
			 String naci, String nomenclatura, String movil, String fijo, String personal, String fec_afi, int afi_est, int tip_afi, 
			 int jta) 
	{
		super();
		this.idAfiliado = idAfi;
		this.Tipo_doc=Tipo_doc;
		this.Genero = sexo;
		this.Prim_Nom = prim_Nom;
		this.Seg_Nom = seg_Nom;
		this.Prim_Ap = prim_Ap;
		this.Seg_Ap = seg_Ap;
		this.Fec_Nac = naci;
		this.Nomenclatura = nomenclatura;
		this.Movil = movil;
		this.Fijo = fijo;
		this.Personal = personal;
		this.Fec_afi = fec_afi;
		this.Afi_estado=afi_est;
		this.Tipo_afi=tip_afi;
		this.Junta=jta;
	}

	
	//métodos Getter y Setter

	//métodos u operaciones
	public int registrar_afiliado(Afiliado afi)
	{
		cx.con(); //Abrimos la conexión
		String com="INSERT INTO afiliados (num_doc,tipo_doc,genero,primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,fecha_nacimiento,direccion,telefono_movil,telefono_fijo,correo_personal,fecha_afi,afi_estado,afi_tipo_afi,junta) "+
				"VALUES ('"+afi.getIdAfiliado()+"','"+
						afi.getTipo_doc()+"','"+
						afi.getGenero()+"','"+
						afi.getPrim_Nom()+"','"+
						afi.getSeg_Nom()+"','"+
						afi.getPrim_Ap()+"','"+
						afi.getSeg_Ap()+"','"+
						afi.getFec_Nac()+"','"+
						afi.getNomenclatura()+"','"+
						afi.getMovil()+"','"+
						afi.getFijo()+"','"+
						afi.getPersonal()+"','"+
						"2016-08-28"+"','"+
						"1"+"','"+
						afi.getTipo_afi()+"','"+
						"1"+"')";//Se realiza la consulta SQL

		int res = cx.execQuery(com);//ejecutamos la consulta
		cx.descon();//cerramos la conexion
		System.out.println(afi);
		System.out.println("Llego a la clase Afiliado "+com);
		//int res=0;
		return res;
	}
	
	public int actualizar_Afiliado(Afiliado afi)
	{
		int res=0;
		return res;
	}
	
	public int eliminar_Afiliado(Afiliado afi)
	{
		int res=0;
		return res;
	}
	
	public ResultSet listar_Afiliado()
	{
		String com = "SELECT * FROM afiliados";
		ResultSet rs = cx.getDatos(com);
		System.out.println("Los datos son " + rs);
		return rs;
	}
	
	public static Afiliado buscar_Afiliado(Afiliado afi)
	{
		Conectar cx=new Conectar();
		Afiliado bafiliado=null;
		try{
		String com = "SELECT * FROM afiliados where num_doc='"+afi.getIdAfiliado()+"'";
		ResultSet rs = cx.getDatos(com);
		while(rs.next()){
			bafiliado=new Afiliado(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)+"",
					rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11)+"",
					rs.getString(12),rs.getString(13),rs.getInt(14),rs.getInt(15),rs.getInt(16));
		}
		rs.close();
		}catch(SQLException se){
			se.printStackTrace();
		}
		return bafiliado;
	}
	

	
	
	
}
