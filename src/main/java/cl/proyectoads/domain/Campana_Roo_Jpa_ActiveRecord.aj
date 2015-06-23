// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.proyectoads;

import cl.proyectoads.Campana;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Campana_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Campana.entityManager;
    
    public static final List<String> Campana.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Campana.entityManager() {
        EntityManager em = new Campana().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Campana.countCampanas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Campana o", Long.class).getSingleResult();
    }
    
    public static List<Campana> Campana.findAllCampanas() {
        return entityManager().createQuery("SELECT o FROM Campana o", Campana.class).getResultList();
    }
    
    public static List<Campana> Campana.findAllCampanas(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Campana o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Campana.class).getResultList();
    }
    
    public static Campana Campana.findCampana(Integer id) {
        if (id == null) return null;
        return entityManager().find(Campana.class, id);
    }
    
    public static List<Campana> Campana.findCampanaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Campana o", Campana.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Campana> Campana.findCampanaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Campana o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Campana.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Campana.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Campana.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Campana attached = Campana.findCampana(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Campana.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Campana.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Campana Campana.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Campana merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
