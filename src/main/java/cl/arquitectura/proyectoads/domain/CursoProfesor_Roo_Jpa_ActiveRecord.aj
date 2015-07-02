// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.domain;

import cl.arquitectura.proyectoads.domain.CursoProfesor;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CursoProfesor_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CursoProfesor.entityManager;
    
    public static final EntityManager CursoProfesor.entityManager() {
        EntityManager em = new CursoProfesor().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CursoProfesor.countCursoProfesors() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CursoProfesor o", Long.class).getSingleResult();
    }
    
    public static List<CursoProfesor> CursoProfesor.findAllCursoProfesors() {
        return entityManager().createQuery("SELECT o FROM CursoProfesor o", CursoProfesor.class).getResultList();
    }
    
    public static CursoProfesor CursoProfesor.findCursoProfesor(Integer id) {
        if (id == null) return null;
        return entityManager().find(CursoProfesor.class, id);
    }
    
    public static List<CursoProfesor> CursoProfesor.findCursoProfesorEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CursoProfesor o", CursoProfesor.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CursoProfesor.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CursoProfesor.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CursoProfesor attached = CursoProfesor.findCursoProfesor(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CursoProfesor.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CursoProfesor.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CursoProfesor CursoProfesor.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CursoProfesor merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
