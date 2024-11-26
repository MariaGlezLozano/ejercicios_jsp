<%-- 
    Document   : mayor_de_tres
    Created on : 14 nov 2024, 12:58:20
    Author     : Maria
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 3</title>
<link rel="stylesheet" type="text/css" href="../estilos.css">
</head>
<body>
<form action="mayor_de_tres.jsp" method="post">
        <label for="numero1">Número 1:</label>
        <input type="number" id="numero1" name="numero1" required><br>
        
        <label for="numero2">Número 2:</label>
        <input type="number" id="numero2" name="numero2" required><br>
        
        <label for="numero3">Número 3:</label>
        <input type="number" id="numero3" name="numero3" required><br>
        
        <input type="submit" value="Encontrar el Mayor">
        <br>      
    </form>


    <%
        String numero1= request.getParameter("numero1");
        String numero2 = request.getParameter("numero2");
        String numero3 = request.getParameter("numero3");
        
        if (numero1 != null && numero2 != null && numero3 != null) {
            int num1 = Integer.parseInt(numero1);
            int num2 = Integer.parseInt(numero2);
            int num3 = Integer.parseInt(numero3);
            
            int mayor = Math.max(num1, Math.max(num2, num3));
            out.println("El número mayor es: " + mayor);
        }
    %>
    <br><br>
     <a href="../index.jsp">Volver</a>
</body>
</html>
