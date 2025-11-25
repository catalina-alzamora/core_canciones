<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Cancion</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>

    <h1>Agregar Cancion:</h1>

    <form:form action="/canciones/procesa/agregar" method="POST" modelAttribute="cancion">
        <form:label path="titulo">Titulo:</form:label>
        <form:input type="text" path="titulo"/>
        <form:errors path="titulo"/>

        <form:label path="artista">Artista:</form:label>
        <form:input type="text" path="artista"/>
        <form:errors path="artista"/>

        <form:label path="album">Album:</form:label>
        <form:input type="text" path="album"/>
        <form:errors path="album"/>

        <form:label path="genero">Genero:</form:label>
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
