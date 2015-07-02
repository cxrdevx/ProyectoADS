// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.domain;

import cl.arquitectura.proyectoads.domain.Evento;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Evento_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Evento.entityManager;
    
    public static final EntityManager Evento.entityManager() {
        EntityManager em = new Evento().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Evento.countEventoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Evento o", Long.class).getSingleResult();
    }
    
    public static List<Evento> Evento.findAllEventoes() {
        return entityManager().createQuery("SELECT o FROM Evento o", Evento.class).getResultList();
    }
    
    public static Evento Evento.findEvento(Integer id) {
        if (id == null) return null;
        return entityManager().find(Evento.class, id);
    }
    
    public static List<Evento> Evento.findEventoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Evento o", Evento.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Evento.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Evento.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Evento attached = Evento.findEvento(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Evento.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Evento.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Evento Evento.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Evento merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}