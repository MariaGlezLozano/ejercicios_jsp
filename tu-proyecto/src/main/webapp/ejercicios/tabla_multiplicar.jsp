<%-- 
    Document   : tabla_multiplicar
    Created on : 14 nov 2024, 13:12:51
    Author     : Maria
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 7</title>
<link rel="stylesheet" type="text/css" href="../estilos.css">
</head>
<body>
<form action="tabla_multiplicar.jsp" method="post">
        <label for="numero">Ingrese un número (1-10):</label>
        <input type="number" id="numero" name="numero" min="1" max="10" required><br>    
        <input type="submit" value="Mostrar Tabla">
    </form>

    <%
        String numTabla = request.getParameter("numero");
        
        if (numTabla != null) {
            int numero = Integer.parseInt(numTabla);
            out.println("<h3>Tabla de Multiplicar del " + numero + ":</h3>");
            for (int i = 1; i <= 10; i++) {
                out.println(numero + " x " + i + " = " + (numero * i) + "<br>");
            }
        }
    %>
     <br><br>
     <a href="../index.jsp">Volver</a>
</body>
</html>

