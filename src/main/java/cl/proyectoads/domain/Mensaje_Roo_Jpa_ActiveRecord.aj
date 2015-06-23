// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.proyectoads;

import cl.proyectoads.Mensaje;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Mensaje_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Mensaje.entityManager;
    
    public static final List<String> Mensaje.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Mensaje.entityManager() {
        EntityManager em = new Mensaje().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Mensaje.countMensajes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Mensaje o", Long.class).getSingleResult();
    }
    
    public static List<Mensaje> Mensaje.findAllMensajes() {
        return entityManager().createQuery("SELECT o FROM Mensaje o", Mensaje.class).getResultList();
    }
    
    public static List<Mensaje> Mensaje.findAllMensajes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Mensaje o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Mensaje.class).getResultList();
    }
    
    public static Mensaje Mensaje.findMensaje(Integer id) {
        if (id == null) return null;
        return entityManager().find(Mensaje.class, id);
    }
    
    public static List<Mensaje> Mensaje.findMensajeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Mensaje o", Mensaje.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Mensaje> Mensaje.findMensajeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Mensaje o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Mensaje.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Mensaje.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Mensaje.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Mensaje attached = Mensaje.findMensaje(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Mensaje.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Mensaje.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Mensaje Mensaje.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Mensaje merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
