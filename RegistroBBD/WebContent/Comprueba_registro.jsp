<%@ page language="java"%>
<%@page import="ec.gob.agentescontrol.controlador.*"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>


<%
	Connection miConexion = conexion.conectar();

	String usuario = request.getParameter("usuario");

	String contra = request.getParameter("contra");

	try {

		Statement miStatement = miConexion.createStatement();

		String PginstruccionSql = "INSERT INTO login (Usuario, Contrasena) VALUES ('" + usuario + "','" + contra
				+ "')";

		miStatement.executeUpdate(PginstruccionSql);

		out.println("Registrado con exito");

	} catch (Exception e) {

		out.println("Ya existe Usuario --- Ecoge Otro...!!!");

	}

	//miConexion.close();
%>

<center>
	<p>
		<a href="index.jsp">Volver</a> <br>
</center>

