<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Detalle de Artista</title>
        <link rel="stylesheet" href="/css/styles.css">
    </head>
    <body>

        <h1>Detalle de Artista</h1>
        <div class="contenedorDetalles">
            <p><strong>ID:</strong> ${artista.id}</p>
            <p><strong>Nombre:</strong> ${artista.nombre}</p>
            <p><strong>Apellido:</strong> ${artista.apellido}</p>
            <p class="biografia"><strong>Biografía:</strong> ${artista.biografia}</p>
            <p><strong>Canciones:</strong></p>
            <ul>
                <c:forEach var="cancion" items="${artista.canciones}">
                    <li>${cancion.titulo}</li>             
                </c:forEach>
            </ul>
            <p><strong>Creada:</strong> ${artista.fechaCreacion}</p>
            <p><strong>Actualizada:</strong> ${artista.fechaActualizacion}</p>
            <a class="link" href="/artistas">Volver a lista de artistas</a>
        </div>

    </body>
</html>