
<%@page import="org.eclipse.jdt.internal.compiler.flow.FinallyFlowContext"%>
<%@ page import="java.util.*"%>
<html>

<body>
	<form name="formulario_compra" action="lista_compras.jsp">
		<p>Articulos a comprar:</p>
		<p>
			<label><input type="checkbox" name="articulos" value="agua">Agua</label><br>
			<label><input type="checkbox" name="articulos" value="leche">leche</label><br>
			<label><input type="checkbox" name="articulos" value="pan">pan</label><br>
			<label><input type="checkbox" name="articulos" value="manzana">manzana</label><br> 
			<label><input type="checkbox" name="articulos" value="carne">carne</label><br>
			<label><input type="checkbox" name="articulos" value="pescado">pescado</label><br>
		</p>
		<p>
			<input type="submit" name="button" id="button" value="Enviar"><br>
		</p>

	</form>

	<h2>Carro de la compra</h2>

	<ul>

		<%
			
			
		
			List<String> ListaElementos = (List<String>) session.getAttribute("misElementos");

				
			if (ListaElementos == null) {

				ListaElementos = new ArrayList<String>();

				session.setAttribute("misElementos", ListaElementos);
			}

			String[] elementos = request.getParameterValues("articulos");

			if (elementos != null) {

				for (String elemTemp : elementos) {

					//out.println("<li>" + elemTemp + "</li>");
					ListaElementos.add(elemTemp);

				}
			}
			
			for (String elemTemp:ListaElementos){
				
				out.println("<li>" + elemTemp + "</li>");
				
			}

			
			
			
 
			
		%>


	</ul>

</body>
</html>