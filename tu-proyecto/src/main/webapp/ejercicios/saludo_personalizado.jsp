<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saludo personalizado</title>
<link rel="stylesheet" type="text/css" href="../estilos.css">
</head>
<body>
	<form method="post">
	<label>Inserte su nombre</label>
	<input type="text" name="nombre" id="nombre required">
	<input type="submit"  name="enviar" value="enviar">
	<br><br>
	<a href="../index.jsp">Volver</a>
	</form>
	<%
		String nombre = request.getParameter("nombre");
		
		if(nombre != null && !nombre.isEmpty()){
			out.println("Hola " + nombre + "!");
			
		}
	%>
	
</body>
</html>