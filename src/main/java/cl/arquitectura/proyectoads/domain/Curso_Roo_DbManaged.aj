// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.domain;

import cl.arquitectura.proyectoads.domain.Clase;
import cl.arquitectura.proyectoads.domain.Curso;
import cl.arquitectura.proyectoads.domain.CursoProfesor;
import cl.arquitectura.proyectoads.domain.Escuela;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Curso_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idCurso")
    private Set<Clase> Curso.clases;
    
    @OneToMany(mappedBy = "idCurso")
    private Set<CursoProfesor> Curso.cursoProfesors;
    
    @ManyToOne
    @JoinColumn(name = "id_escuela", referencedColumnName = "id")
    private Escuela Curso.idEscuela;
    
    @Column(name = "nivel", length = 20)
    @NotNull
    private String Curso.nivel;
    
    @Column(name = "letra")
    @NotNull
    private Character Curso.letra;
    
    public Set<Clase> Curso.getClases() {
        return clases;
    }
    
    public void Curso.setClases(Set<Clase> clases) {
        this.clases = clases;
    }
    
    public Set<CursoProfesor> Curso.getCursoProfesors() {
        return cursoProfesors;
    }
    
    public void Curso.setCursoProfesors(Set<CursoProfesor> cursoProfesors) {
        this.cursoProfesors = cursoProfesors;
    }
    
    public Escuela Curso.getIdEscuela() {
        return idEscuela;
    }
    
    public void Curso.setIdEscuela(Escuela idEscuela) {
        this.idEscuela = idEscuela;
    }
    
    public String Curso.getNivel() {
        return nivel;
    }
    
    public void Curso.setNivel(String nivel) {
        this.nivel = nivel;
    }
    
    public Character Curso.getLetra() {
        return letra;
    }
    
    public void Curso.setLetra(Character letra) {
        this.letra = letra;
    }
    
}
