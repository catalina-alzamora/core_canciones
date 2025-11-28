<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Artistas</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <h1>Lista de Artistas</h1>
    <ul>
        <c:forEach var="artista" items="${listaArtistas}">
            <a href="/artistas/detalle/${artista.id}"><li>${artista.nombre} ${artista.apellido}</li></a>             
        </c:forEach>
    </ul>
    <a href="/artistas/formulario/agregar">
        <button class="btn1">Agregar Artista</button>
    </a>
    <a class="link" href="/canciones">Ir a canciones</a>
</body>
</html>