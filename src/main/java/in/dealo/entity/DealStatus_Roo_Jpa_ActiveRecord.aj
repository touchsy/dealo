// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.DealStatus;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DealStatus_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DealStatus.entityManager;
    
    public static final EntityManager DealStatus.entityManager() {
        EntityManager em = new DealStatus().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DealStatus.countDealStatuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DealStatus o", Long.class).getSingleResult();
    }
    
    public static List<DealStatus> DealStatus.findAllDealStatuses() {
        return entityManager().createQuery("SELECT o FROM DealStatus o", DealStatus.class).getResultList();
    }
    
    public static DealStatus DealStatus.findDealStatus(Integer id) {
        if (id == null) return null;
        return entityManager().find(DealStatus.class, id);
    }
    
    public static List<DealStatus> DealStatus.findDealStatusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DealStatus o", DealStatus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DealStatus.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DealStatus.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DealStatus attached = DealStatus.findDealStatus(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DealStatus.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DealStatus.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DealStatus DealStatus.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DealStatus merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
