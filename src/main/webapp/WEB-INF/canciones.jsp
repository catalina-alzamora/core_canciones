<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Canciones</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

    <h1>Lista de Canciones</h1>

    <table>
        <thead>
            <tr>
                <th>Título</th>
                <th>Artista</th>
                <th>Detalles</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="cancion" items="${listaCanciones}">
                <tr>
                    <td>${cancion.titulo}</td>
                    <td>${cancion.artista}</td>
                    <td>
                        <a class="detalle" href="/canciones/detalle/${cancion.id}">Detalle</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="/canciones/formulario/agregar">
        <button class="btn1">Agregar Canción</button>
    </a>
</body>
</html>
