<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Detalle de Cancion</title>
        <link rel="stylesheet" href="/css/styles.css">
    </head>
    <body>

        <h1>Detalle de la Canción</h1>
        <div class="contenedorDetalles">
            <p><strong>ID:</strong> ${cancion.id}</p>
            <p><strong>Título:</strong> ${cancion.titulo}</p>
            <p><strong>Artista:</strong> ${cancion.artista.nombre} ${cancion.artista.apellido}</p>
            <p><strong>Álbum:</strong> ${cancion.album}</p>
            <p><strong>Género:</strong> ${cancion.genero}</p>
            <p><strong>Idioma:</strong> ${cancion.idioma}</p>
            <p><strong>Creada:</strong> ${cancion.fechaCreacion}</p>
            <p><strong>Actualizada:</strong> ${cancion.fechaActualizacion}</p>
        </div>
        <a href="/canciones/formulario/editar/${cancion.id}">
            <button class="btn1">Editar Canción</button>
        </a>

        <form action="/canciones/eliminar/${cancion.id}" method="POST">
			<input type="hidden" name="_method" value="DELETE"/>
			<button class="btn1">Eliminar</button>
		</form>
        <a class="link" href="/canciones">Volver a lista de canciones</a>

    </body>
</html>