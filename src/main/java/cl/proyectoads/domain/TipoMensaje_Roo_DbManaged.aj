// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.proyectoads;

import cl.proyectoads.Mensaje;
import cl.proyectoads.TipoMensaje;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect TipoMensaje_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idTipoMensaje")
    private Set<Mensaje> TipoMensaje.mensajes;
    
    @Column(name = "nombre", length = 30)
    @NotNull
    private String TipoMensaje.nombre;
    
    public Set<Mensaje> TipoMensaje.getMensajes() {
        return mensajes;
    }
    
    public void TipoMensaje.setMensajes(Set<Mensaje> mensajes) {
        this.mensajes = mensajes;
    }
    
    public String TipoMensaje.getNombre() {
        return nombre;
    }
    
    public void TipoMensaje.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
