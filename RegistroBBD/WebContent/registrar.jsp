<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="utf-8">
<title>Registro de usuarios</title>

<style>

body{
	background-color:#FFC;
}

table{
	background:#FF6;
	padding:10px;
	border:solid 2px #FF0000;
}

td{
	padding:5px 0;
}


</style>

</head>
<body>
<h1 style="text-align:center">Registro de Usuario</h1>
<form action="Comprueba_registro.jsp" method="post">

  <table width="25%">
    <tr>
     <tr>
      <td width="13%"><label for="usuario">Usuario: </label></td>
      <td width="87%"><input type="text" name="usuario" id="usuario"></td>
    </tr>
    <tr>
      <td><label for="contra">Contraseña: </label></td>
      <td><input type="text" name="contra" id="contra"></td>
    </tr>

    <tr>
      <td colspan="2" align="center"><input type="submit" name="button" id="button" value="Enviar"></td>
    </tr>

</body>
</html>