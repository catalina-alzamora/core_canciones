<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Canciones</title>
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
                    <a href="/canciones/detalle/${cancion.id}">Detalle</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
