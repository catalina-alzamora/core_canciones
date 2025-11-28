package com.catalinaa.canciones.modelos;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;


@Entity
@Table(name = "canciones")
public class Cancion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //autoincremental
    private Long id;

    @Size(min = 5, message = "Por favor proporciona el titulo de la cancion")
    @Column(nullable = false)
    private String titulo;

    // Columna con FK
    @ManyToOne
    @JoinColumn(name = "artista_id")
    @NotNull(message="Debes seleccionar un artista")
    private Artista artista;

    @Size(min = 3, message = "Por favor proporciona el album de la cancion")
    private String album;

    @Size(min = 3, message = "Por favor proporciona el genero de la cancion")
    private String genero;

    @Size(min = 3, message = "Por favor proporciona el idioma de la cancion")
    private String idioma;

    @Column(name = "fecha_creacion", updatable = false)
    private LocalDate fechaCreacion;

    @Column(name = "fecha_actualizacion")
    private LocalDate fechaActualizacion;

    // Constructor vacio
    public Cancion() {}

    // Creando fechas antes de agregar a bd
    @PrePersist
    protected void onCreate() {
    this.fechaCreacion = LocalDate.now();
    this.fechaActualizacion = LocalDate.now();
    }

    @PreUpdate
    protected void onUpdate() {
    this.fechaActualizacion = LocalDate.now();
    }

    // Getters y setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Artista getArtista() {
        return artista;
    }

    public void setArtista(Artista artista) {
        this.artista = artista;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public LocalDate getFechaCreacion() {
        return fechaCreacion;
    }
    public LocalDate getFechaActualizacion() {
        return fechaActualizacion;
    }

    public void setFechaActualizacion(LocalDate fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }
}
