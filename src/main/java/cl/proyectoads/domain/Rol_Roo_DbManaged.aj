// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.proyectoads;

import cl.proyectoads.Persona;
import cl.proyectoads.Rol;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect Rol_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idRol")
    private Set<Persona> Rol.personae;
    
    @Column(name = "rol", length = 30)
    private String Rol.rol;
    
    public Set<Persona> Rol.getPersonae() {
        return personae;
    }
    
    public void Rol.setPersonae(Set<Persona> personae) {
        this.personae = personae;
    }
    
    public String Rol.getRol() {
        return rol;
    }
    
    public void Rol.setRol(String rol) {
        this.rol = rol;
    }
    
}
