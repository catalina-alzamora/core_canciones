package com.catalinaa.canciones.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.catalinaa.canciones.modelos.Cancion;
import com.catalinaa.canciones.servicios.ServicioCanciones;

import jakarta.validation.Valid;

@Controller
public class ControladorCanciones {

    @Autowired
    private final ServicioCanciones servicioCanciones;

    public ControladorCanciones(ServicioCanciones servicioCanciones) {
        this.servicioCanciones = servicioCanciones;
    }
    
    @GetMapping("/canciones")
    public String desplegarCanciones(Model modelo) {
        List<Cancion> listaCanciones = this.servicioCanciones.obtenerTodasLasCanciones();
        modelo.addAttribute("listaCanciones", listaCanciones);
        return "canciones.jsp";
    }

    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable("idCancion") Long idCancion, Model modelo) {
        Cancion cancion = this.servicioCanciones.obtenerPorId(idCancion);
        modelo.addAttribute("cancion", cancion);
        return "detalleCancion.jsp";
    }

    // Accediendo a formulario
    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(@ModelAttribute("cancion") Cancion cancion){
        return "agregarCancion.jsp";
    }  

    // Creando cancion nueva
    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(@Valid @ModelAttribute("cancion") Cancion cancion, 
            BindingResult validaciones) {

        if(validaciones.hasErrors()){
            return "agregarCancion.jsp";
        }
        this.servicioCanciones.agregarCancion(cancion);
        return "redirect:/canciones";
    }

    // Accediendo a formulario actualizacion
    @GetMapping("/canciones/formulario/editar/{idCancion}")
    public String formularioEditarCancion(@PathVariable("idCancion") Long idCancion, Model modelo) {
        Cancion cancion = servicioCanciones.obtenerPorId(idCancion);
        modelo.addAttribute("cancion", cancion);
            return "editarCancion.jsp";
    }

    // Actualizando cancion
    @PutMapping("/canciones/procesa/editar/{idCancion}")
    public String procesarEditarCancion(@PathVariable("idCancion") Long idCancion, @Valid @ModelAttribute("cancion") Cancion cancion,
            BindingResult validaciones) {
    
        if (validaciones.hasErrors()) {
            return "editarCancion.jsp";
        }
        
        this.servicioCanciones.actualizaCancion(cancion);
        return "redirect:/canciones";
    }

    //Eliminando
    @DeleteMapping("/canciones/eliminar/{idCancion}")
    public String eliminar(@PathVariable("idCancion") Long id) {

        this.servicioCanciones.eliminaCancion(id);
        return "redirect:/canciones";
    }
}