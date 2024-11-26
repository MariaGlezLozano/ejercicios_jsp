<%-- 
    Document   : suma_acumulativa
    Created on : 14 nov 2024, 13:09:42
    Author     : Maria
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio6</title>
<link rel="stylesheet" type="text/css" href="../estilos.css">
</head>
<body>
	<body>
    <form action="suma_acumulativa.jsp" method="post">
        <label for="numero">Ingrese un número:</label>
        <input type="number" id="numero" name="numero" required><br>
        
        <input type="submit" value="Calcular Suma">
    </form>

    <%
        String num = request.getParameter("numero");
        
        if (num != null) {
            int numero = Integer.parseInt(num);
            int suma = 0;
            int contador = 1;
          
            for(int i = 1; i <= numero ; i++){
            	suma += i;   	
            } 
            out.println("La suma acumulativa de 1 a " + numero + " es: " + suma);
        }
    %>
    <br><br>
     <a href="../index.jsp">Volver</a>
</body>
</html>

