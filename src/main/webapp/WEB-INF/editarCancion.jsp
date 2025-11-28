<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Cancion</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

    <h1>Editar Cancion:</h1>

    <form:form action="/canciones/procesa/editar/${cancion.id}" method="POST" modelAttribute="cancion">
    <input type="hidden" name="_method" value="PUT"/>

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


        <form:label path="album">Álbum:</form:label>
        <form:input type="text" path="album"/>
        <form:errors path="album"/>

        <form:label path="genero">Género:</form:label>
        <form:input type="text" path="genero"/>
        <form:errors path="genero"/>

        <form:label path="idioma">Idioma:</form:label>
        <form:input type="text" path="idioma"/>
        <form:errors path="idioma"/>

        <!-- id no necesita sobreescribirse -->
        <input type="hidden" name="id" value="${cancion.id}"/>

        <input class="btn1" type="submit" value="Guardar"/>

    </form:form> 
        <a class="link" href="/canciones">Volver</a>

</body>
</html>