<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*"  %>

<% 
String nombre=request.getParameter("nombre");

String apellido=request.getParameter("apellido");

String usuario=request.getParameter("usuario");

String contra=request.getParameter("contra");

String pais=request.getParameter("pais");

String tecno=request.getParameter("tecnologias");

//para funcione la conexion
Class.forName("com.mysql.jdbc.Driver");

try{
	


Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","");

Statement miStatement=miConexion.createStatement();

String instruccionSql="INSERT INTO usuarios (Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) VALUES ('"+ nombre +"','" + apellido + "','"+ usuario +"','" + contra +"','"+ pais +"','"+ tecno +"')";

miStatement.executeUpdate(instruccionSql);

out.println("Registrado con exito");

}catch (Exception e){
	
	out.println("hay erro");
	
}

%>



</body>
</html>