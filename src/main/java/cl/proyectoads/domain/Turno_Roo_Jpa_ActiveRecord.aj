// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.proyectoads;

import cl.proyectoads.Turno;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Turno_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Turno.entityManager;
    
    public static final List<String> Turno.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Turno.entityManager() {
        EntityManager em = new Turno().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Turno.countTurnoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Turno o", Long.class).getSingleResult();
    }
    
    public static List<Turno> Turno.findAllTurnoes() {
        return entityManager().createQuery("SELECT o FROM Turno o", Turno.class).getResultList();
    }
    
    public static List<Turno> Turno.findAllTurnoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Turno o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Turno.class).getResultList();
    }
    
    public static Turno Turno.findTurno(Integer id) {
        if (id == null) return null;
        return entityManager().find(Turno.class, id);
    }
    
    public static List<Turno> Turno.findTurnoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Turno o", Turno.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Turno> Turno.findTurnoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Turno o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Turno.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Turno.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Turno.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Turno attached = Turno.findTurno(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Turno.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Turno.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Turno Turno.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Turno merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}