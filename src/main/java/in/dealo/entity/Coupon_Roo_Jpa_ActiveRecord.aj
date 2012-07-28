// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.Coupon;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Coupon_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Coupon.entityManager;
    
    public static final EntityManager Coupon.entityManager() {
        EntityManager em = new Coupon().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Coupon.countCoupons() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Coupon o", Long.class).getSingleResult();
    }
    
    public static List<Coupon> Coupon.findAllCoupons() {
        return entityManager().createQuery("SELECT o FROM Coupon o", Coupon.class).getResultList();
    }
    
    public static Coupon Coupon.findCoupon(Integer id) {
        if (id == null) return null;
        return entityManager().find(Coupon.class, id);
    }
    
    public static List<Coupon> Coupon.findCouponEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Coupon o", Coupon.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Coupon.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Coupon.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Coupon attached = Coupon.findCoupon(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Coupon.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Coupon.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Coupon Coupon.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Coupon merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}