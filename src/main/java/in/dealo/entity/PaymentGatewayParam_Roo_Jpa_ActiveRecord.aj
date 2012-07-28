// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.PaymentGatewayParam;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PaymentGatewayParam_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PaymentGatewayParam.entityManager;
    
    public static final EntityManager PaymentGatewayParam.entityManager() {
        EntityManager em = new PaymentGatewayParam().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PaymentGatewayParam.countPaymentGatewayParams() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PaymentGatewayParam o", Long.class).getSingleResult();
    }
    
    public static List<PaymentGatewayParam> PaymentGatewayParam.findAllPaymentGatewayParams() {
        return entityManager().createQuery("SELECT o FROM PaymentGatewayParam o", PaymentGatewayParam.class).getResultList();
    }
    
    public static PaymentGatewayParam PaymentGatewayParam.findPaymentGatewayParam(Integer id) {
        if (id == null) return null;
        return entityManager().find(PaymentGatewayParam.class, id);
    }
    
    public static List<PaymentGatewayParam> PaymentGatewayParam.findPaymentGatewayParamEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PaymentGatewayParam o", PaymentGatewayParam.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PaymentGatewayParam.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PaymentGatewayParam.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PaymentGatewayParam attached = PaymentGatewayParam.findPaymentGatewayParam(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PaymentGatewayParam.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PaymentGatewayParam.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PaymentGatewayParam PaymentGatewayParam.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PaymentGatewayParam merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
