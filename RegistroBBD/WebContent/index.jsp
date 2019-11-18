


<html>
<head>
<meta charset="utf-8">
<title>Formulario</title>
<style>
body {
	background-color: #FFC;
}

table {
	background: #FF6;
	padding: 10px;
	border: solid 2px #FF0000;
}

td {
	padding: 5px 0;
}
</style>
</head>

<body>
	<U><h1 style="text-align: center">LOGGIN</h1></U>

	<form action="Comprueba_Usuario.jsp" method="post">

		<DIV ALIGN=center>
			<table width=20% border=1>

				<tr>
					<td width="13%"><label for="usuario"><B><I>Usuario: </I></B></label></td>
					<td width="87%"><input type="text" name="usuario" id="usuario"></td>
				</tr>
				<tr>
					<td><label for="contra"><B><I>Contraseña: </I></B></label></td>
					<td><input type="text" name="contra" id="contra"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="button" id="button" value="Login"></td>
				</tr>

				<p>
					<br>
				</p>
				</form>

				<form action="registrar.jsp" method="post">

					<td colspan="2" align="center"><input type="submit"
						name="button" id="button" value="Registrar"></td>

				</form>

			</table>
		</DIV>
</body>
</html>