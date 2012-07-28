// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.DealCategory;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DealCategory_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DealCategory.entityManager;
    
    public static final EntityManager DealCategory.entityManager() {
        EntityManager em = new DealCategory().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DealCategory.countDealCategorys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DealCategory o", Long.class).getSingleResult();
    }
    
    public static List<DealCategory> DealCategory.findAllDealCategorys() {
        return entityManager().createQuery("SELECT o FROM DealCategory o", DealCategory.class).getResultList();
    }
    
    public static DealCategory DealCategory.findDealCategory(Integer id) {
        if (id == null) return null;
        return entityManager().find(DealCategory.class, id);
    }
    
    public static List<DealCategory> DealCategory.findDealCategoryEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DealCategory o", DealCategory.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DealCategory.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DealCategory.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DealCategory attached = DealCategory.findDealCategory(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DealCategory.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DealCategory.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DealCategory DealCategory.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DealCategory merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
