// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.PromoCode;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PromoCode_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PromoCode.entityManager;
    
    public static final EntityManager PromoCode.entityManager() {
        EntityManager em = new PromoCode().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PromoCode.countPromoCodes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PromoCode o", Long.class).getSingleResult();
    }
    
    public static List<PromoCode> PromoCode.findAllPromoCodes() {
        return entityManager().createQuery("SELECT o FROM PromoCode o", PromoCode.class).getResultList();
    }
    
    public static PromoCode PromoCode.findPromoCode(Integer id) {
        if (id == null) return null;
        return entityManager().find(PromoCode.class, id);
    }
    
    public static List<PromoCode> PromoCode.findPromoCodeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PromoCode o", PromoCode.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PromoCode.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PromoCode.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PromoCode attached = PromoCode.findPromoCode(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PromoCode.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PromoCode.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PromoCode PromoCode.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PromoCode merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
