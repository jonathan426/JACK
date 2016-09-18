package modelo;

import java.sql.*;

public class Conectar 
{
	private Connection con = null;
	private Statement consulta = null;
	private ResultSet data= null;
	private String server;
	private String BD;
	private String userBD;
	private String passBD;
	
	
	public Conectar()
	{
		this.server="127.0.0.1"; //localhost
		this.BD="jack"; //nombre de la base de datos
		this.userBD="admin"; //usuario de la base de datos
		this.passBD="jacadmin.2016"; //password del usuario
		
	}
	
	//método de conexion
	public void con()
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver"); //cargamos el driver
			String url="jdbc:mysql://"+this.server+"/"+this.BD;
			this.con = DriverManager.getConnection(url,this.userBD,this.passBD);//abrimos la conexión
			System.out.println("Conexión Exitosa");
			this.consulta=con.createStatement();//Inicializamos el objeto Statement para SQL
			
		} catch (Exception e) 
		{
			System.out.println("Error de conexión "+e.getMessage());
		}
	}
	
	//método para cerrar la conexión
	public void descon()
	{
		try 
		{
			if(con!=null)
			{
				this.con.close();
			}
			
		} catch (Exception e) {
			// 
			System.out.println("Error de desconexión "+e.getMessage());
		}
	}
	
	//método para ejecutar sentencias SQL
	
	public int execQuery(String com)
	{
		int res=0;
		try 
		{
			this.con();
			res= this.consulta.executeUpdate(com);
			
		} 
		catch (Exception e) 
		{
			System.out.println("Error de SQL"+e.getMessage());
		}
		return res;
	}
	
	//método para ejecutar SELECT
	public ResultSet getDatos(String com)
	{
		try 
		{
			this.con();
			this.data = this.consulta.executeQuery(com);
			
			
		} catch (Exception e) 
		{
			System.out.println("Error de la Consulta"+e.getMessage());
		}
		return data;
		
	}
	
	public int contarFilas(String com)
	{
		try {
			this.con();
			this.data=this.consulta.executeQuery(com);
			int contador=0;
			while(data.next()){ //recorre rodo el resultset
				contador++; //sumara las veces que haya registros
			}
			return contador;//devuelve la cantidad de registros
			
			
		} catch (Exception e) {
			System.out.println("Error al contar registros"+e.getMessage());
			System.out.println(com);
			return 0;
		}
	}
	
	
}
