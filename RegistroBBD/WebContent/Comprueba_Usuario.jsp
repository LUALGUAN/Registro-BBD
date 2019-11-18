<%@ page language="java"%>
<%@page import="ec.gob.agentescontrol.controlador.*"%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>

<%

	Connection miConexion = conexion.conectar();
	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");

	try {

		PreparedStatement c_preparada = miConexion.prepareStatement("SELECT * FROM login WHERE Usuario = ? AND Contrasena = ?");
		c_preparada.setString(1, usuario);
		c_preparada.setString(2, contra);
		ResultSet miResultset = c_preparada.executeQuery();

		if (miResultset.absolute(1)) {
			//...
			request.getRequestDispatcher("/lista_compras.jsp").forward(request, response);
			//...
		}

		else
			out.println("No hay usuario registrado");
%>
<center>
	<p>
		<a href="index.jsp">Volver</a> <br>
</center>
<%
	} catch (Exception e) {

		out.println("Error.......!!!");

	}

	//miConexion.close();
%>




