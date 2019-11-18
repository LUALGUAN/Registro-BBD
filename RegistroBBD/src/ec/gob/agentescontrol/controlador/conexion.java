package ec.gob.agentescontrol.controlador;

import java.sql.Connection;
import java.sql.DriverManager;



public class conexion {

	static String CONTROLADOR = "com.mysql.jdbc.Driver";
	static String URL = "jdbc:mysql://localhost:3306/proyecto_jsp";
	static String USUARIO = "root";
	static String CLAVE = "";

	 @SuppressWarnings("finally")
	public static Connection conectar()
	    {
	            Connection conecta=null; 

	           try 
	              {
	                Class.forName(CONTROLADOR); 
	                conecta=(Connection)DriverManager.getConnection(URL, USUARIO, CLAVE);
	              }
	              catch(ClassNotFoundException ex)
	              {
	                System.out.println(ex.getMessage());
	              }
	             catch(Exception ex)
	             {
	                System.out.println(ex.getMessage());                
	             }
	            finally
	            {
	               return conecta;
	            }
	     }
}
