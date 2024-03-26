package capa_datos;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexionBD {
	
	static{
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Driver Correcto");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Error en el Driver");
		}	
	}
	
	
	public static Connection miConexion(){
		Connection con=null;
		try {
			con=DriverManager.getConnection("jdbc:sqlserver://JHONATAN:1433;databaseName=REGISTROPOSTULANTE2024","sa","998696");
			System.out.println("Conexion ok");
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error en la conexion");
		}
		return con;
	}
	
	public static void main(String[]args){
		Connection conecta=new ConexionBD().miConexion();
	}		
}
