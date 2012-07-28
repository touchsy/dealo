// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.Webcontactform;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Webcontactform_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Webcontactform.entityManager;
    
    public static final EntityManager Webcontactform.entityManager() {
        EntityManager em = new Webcontactform().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Webcontactform.countWebcontactforms() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Webcontactform o", Long.class).getSingleResult();
    }
    
    public static List<Webcontactform> Webcontactform.findAllWebcontactforms() {
        return entityManager().createQuery("SELECT o FROM Webcontactform o", Webcontactform.class).getResultList();
    }
    
    public static Webcontactform Webcontactform.findWebcontactform(Integer id) {
        if (id == null) return null;
        return entityManager().find(Webcontactform.class, id);
    }
    
    public static List<Webcontactform> Webcontactform.findWebcontactformEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Webcontactform o", Webcontactform.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Webcontactform.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Webcontactform.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Webcontactform attached = Webcontactform.findWebcontactform(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Webcontactform.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Webcontactform.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Webcontactform Webcontactform.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Webcontactform merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}