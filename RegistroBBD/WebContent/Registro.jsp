<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Usuarios registrados</h2>

Usuario confirmado: <br/><br/>
nombre: <%= request.getParameter("nombre")%> &nbsp; Apellido: <%= request.getParameter("apellido")%><br/><br/>

<jsp:include page="Fecha.jsp"></jsp:include> 



</body>
</html>