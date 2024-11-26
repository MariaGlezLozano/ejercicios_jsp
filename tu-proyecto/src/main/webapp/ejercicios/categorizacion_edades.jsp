<%-- 
    Document   : categorizacion_edades
    Created on : 14 nov 2024, 13:05:59
    Author     : Maria
--%>

<%@ page language="java" contentType="text/html; charset=Latin1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 5. Categorización de edades</title>
<link rel="stylesheet" type="text/css" href="../estilos.css">
</head>
<body>
	<form action="categorizacion_edades.jsp" method="post">
        <label for="edad">Ingrese su edad:</label>
        <input type="number" id="edad" name="edad" required><br>    
        <input type="submit" value="Categorizar">
    </form>


    <%
        String edadUsuario = request.getParameter("edad");
        
        if (edadUsuario != null) {
            int edad = Integer.parseInt(edadUsuario);
            String categoria;
            
            if (edad < 12) {
                categoria = "Infante";
            } else if (edad < 18) {
                categoria = "Adolescente";
            } else if (edad < 61) {
                categoria = "Adulto";
            } else {
                categoria = "Anciano";
            }
            out.println("Categoría: " + categoria);
        }
        
    %>
     <br><br>
     <a href="../index.jsp">Volver</a>
</body>
</html>

