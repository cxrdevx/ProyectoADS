// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.domain;

import cl.arquitectura.proyectoads.domain.Evento;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Evento_Roo_Jpa_Entity {
    
    declare @type: Evento: @Entity;
    
    declare @type: Evento: @Table(name = "evento");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Evento.id;
    
    public Integer Evento.getId() {
        return this.id;
    }
    
    public void Evento.setId(Integer id) {
        this.id = id;
    }
    
}