// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.domain;

import cl.arquitectura.proyectoads.domain.Escuela;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Escuela_Roo_Jpa_Entity {
    
    declare @type: Escuela: @Entity;
    
    declare @type: Escuela: @Table(name = "escuela");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Escuela.id;
    
    public Integer Escuela.getId() {
        return this.id;
    }
    
    public void Escuela.setId(Integer id) {
        this.id = id;
    }
    
}
