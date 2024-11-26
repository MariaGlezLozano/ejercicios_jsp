<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculo tiempo de viaje</title>
<link rel="stylesheet" type="text/css" href="../estilos.css">
</head>
<body>
	 <form  method="POST">
        <table>
            <tr>
                <td> <label for="nombre">Indique la distancia a recorrer(en Km)</label></td>
                <td> <input type="number" name="distancia" required></td>
            </tr>
            <tr>
                <td><label for="apellidos">Indique la velocidad promedio esperada(en km/h)</label></td>
                <td><input type="number" name="velocidad" required></td>
            </tr>
        </table>
        <p><input type="submit" value="enviar"></p>
    </form>
    <%
        if(request.getParameter("distancia") != null && request.getParameter("velocidad") != null){
          int distancia = Integer.parseInt(request.getParameter("distancia"));
            int velocidad = Integer.parseInt(request.getParameter("velocidad"));
            
            if(distancia >=0 && velocidad >=0){
            int distanciaTotal = distancia / velocidad;
            out.println("El tiempo que tardará en hacer " + distancia + " km, es " + distanciaTotal + " horas.");
        }
        }
          
    %>
    <br>
    <a href="../index.jsp">Volver</a>
</body>
</html>