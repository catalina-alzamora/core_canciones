<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Canción</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

    <h1>Agregar Canción:</h1>

    <form:form action="/canciones/procesa/agregar" method="POST" modelAttribute="cancion">
        <form:label path="titulo">Título:</form:label>
        <form:input type="text" path="titulo"/>
        <form:errors path="titulo"/>

        <form:label path="artista.id">Artista:</form:label>
        <form:select path="artista.id">
            <form:option value="">Selecciona un artista</form:option>
            <c:forEach var="a" items="${listaArtistas}">
                <option value="${a.id}">${a.nombre} ${a.apellido}</option>
            </c:forEach>
        </form:select>
        <form:errors path="artista.id" cssClass="error"/>

        <form:label path="album">Album:</form:label>
        <form:input type="text" path="album"/>
        <form:errors path="album"/>

        <form:label path="genero">Género:</form:label>
        <form:input type="text" path="genero"/>
        <form:errors path="genero"/>

        <form:label path="idioma">Idioma:</form:label>
        <form:input type="text" path="idioma"/>
        <form:errors path="idioma"/>

        <input class="btn1" type="submit" value="Agregar"/>

    </form:form> 
        <a class="link" href="/canciones">Volver</a>

</body>
</html>
