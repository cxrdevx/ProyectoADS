// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.domain;

import cl.arquitectura.proyectoads.domain.CursoProfesor;
import cl.arquitectura.proyectoads.domain.MensajeEnvio;
import cl.arquitectura.proyectoads.domain.Persona;
import cl.arquitectura.proyectoads.domain.Rol;
import cl.arquitectura.proyectoads.domain.TipoPersona;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

privileged aspect Persona_Roo_DbManaged {
    
    @OneToOne
    @JoinColumn(name = "id", nullable = false, insertable = false, updatable = false)
    private CursoProfesor Persona.cursoProfesor;
    
    @OneToOne(mappedBy = "persona")
    private MensajeEnvio Persona.mensajeEnvio;
    
    @OneToMany(mappedBy = "idApoderado")
    private Set<Persona> Persona.personae;
    
    @ManyToOne
    @JoinColumn(name = "id_tipo_persona", referencedColumnName = "id")
    private TipoPersona Persona.idTipoPersona;
    
    @ManyToOne
    @JoinColumn(name = "id_rol", referencedColumnName = "id")
    private Rol Persona.idRol;
    
    @ManyToOne
    @JoinColumn(name = "id_apoderado", referencedColumnName = "id", insertable = false, updatable = false)
    private Persona Persona.idApoderado;
    
    @Column(name = "nombre", length = 30)
    private String Persona.nombre;
    
    @Column(name = "apellidos", length = 50)
    private String Persona.apellidos;
    
    @Column(name = "id_curso")
    private Integer Persona.idCurso;
    
    @Column(name = "telefono")
    private Integer Persona.telefono;
    
    public CursoProfesor Persona.getCursoProfesor() {
        return cursoProfesor;
    }
    
    public void Persona.setCursoProfesor(CursoProfesor cursoProfesor) {
        this.cursoProfesor = cursoProfesor;
    }
    
    public MensajeEnvio Persona.getMensajeEnvio() {
        return mensajeEnvio;
    }
    
    public void Persona.setMensajeEnvio(MensajeEnvio mensajeEnvio) {
        this.mensajeEnvio = mensajeEnvio;
    }
    
    public Set<Persona> Persona.getPersonae() {
        return personae;
    }
    
    public void Persona.setPersonae(Set<Persona> personae) {
        this.personae = personae;
    }
    
    public TipoPersona Persona.getIdTipoPersona() {
        return idTipoPersona;
    }
    
    public void Persona.setIdTipoPersona(TipoPersona idTipoPersona) {
        this.idTipoPersona = idTipoPersona;
    }
    
    public Rol Persona.getIdRol() {
        return idRol;
    }
    
    public void Persona.setIdRol(Rol idRol) {
        this.idRol = idRol;
    }
    
    public Persona Persona.getIdApoderado() {
        return idApoderado;
    }
    
    public void Persona.setIdApoderado(Persona idApoderado) {
        this.idApoderado = idApoderado;
    }
    
    public String Persona.getNombre() {
        return nombre;
    }
    
    public void Persona.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Persona.getApellidos() {
        return apellidos;
    }
    
    public void Persona.setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    
    public Integer Persona.getIdCurso() {
        return idCurso;
    }
    
    public void Persona.setIdCurso(Integer idCurso) {
        this.idCurso = idCurso;
    }
    
    public Integer Persona.getTelefono() {
        return telefono;
    }
    
    public void Persona.setTelefono(Integer telefono) {
        this.telefono = telefono;
    }
    
}
