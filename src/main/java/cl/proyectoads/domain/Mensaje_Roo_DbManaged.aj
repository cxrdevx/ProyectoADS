// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.proyectoads;

import cl.proyectoads.Evento;
import cl.proyectoads.Mensaje;
import cl.proyectoads.MensajeEnvio;
import cl.proyectoads.TipoMensaje;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Mensaje_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idMensaje")
    private Set<MensajeEnvio> Mensaje.mensajeEnvios;
    
    @ManyToOne
    @JoinColumn(name = "id_evento", referencedColumnName = "id")
    private Evento Mensaje.idEvento;
    
    @ManyToOne
    @JoinColumn(name = "id_tipo_mensaje", referencedColumnName = "id")
    private TipoMensaje Mensaje.idTipoMensaje;
    
    @Column(name = "fecha_envio")
    @NotNull
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date Mensaje.fechaEnvio;
    
    @Column(name = "contenido", length = 200)
    @NotNull
    private String Mensaje.contenido;
    
    public Set<MensajeEnvio> Mensaje.getMensajeEnvios() {
        return mensajeEnvios;
    }
    
    public void Mensaje.setMensajeEnvios(Set<MensajeEnvio> mensajeEnvios) {
        this.mensajeEnvios = mensajeEnvios;
    }
    
    public Evento Mensaje.getIdEvento() {
        return idEvento;
    }
    
    public void Mensaje.setIdEvento(Evento idEvento) {
        this.idEvento = idEvento;
    }
    
    public TipoMensaje Mensaje.getIdTipoMensaje() {
        return idTipoMensaje;
    }
    
    public void Mensaje.setIdTipoMensaje(TipoMensaje idTipoMensaje) {
        this.idTipoMensaje = idTipoMensaje;
    }
    
    public Date Mensaje.getFechaEnvio() {
        return fechaEnvio;
    }
    
    public void Mensaje.setFechaEnvio(Date fechaEnvio) {
        this.fechaEnvio = fechaEnvio;
    }
    
    public String Mensaje.getContenido() {
        return contenido;
    }
    
    public void Mensaje.setContenido(String contenido) {
        this.contenido = contenido;
    }
    
}
