package com.catalinaa.canciones.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.catalinaa.canciones.modelos.Cancion;
import com.catalinaa.canciones.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {

    @Autowired
    private final RepositorioCanciones repositorioCanciones;

    public ServicioCanciones(RepositorioCanciones repositorioCanciones){
        this.repositorioCanciones = repositorioCanciones;
    }

    public List<Cancion> obtenerTodasLasCanciones() {
        return this.repositorioCanciones.findAll();
    }

    public Cancion obtenerPorId(Long id) {
        return this.repositorioCanciones.findById(id).orElse(null);
    }
}
