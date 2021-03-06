// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.dao.DealOrderDAO;
import in.dealo.entity.DealOrder;
import in.dealo.svc.DealOrderSvcImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DealOrderSvcImpl_Roo_Service {
    
    declare @type: DealOrderSvcImpl: @Service;
    
    declare @type: DealOrderSvcImpl: @Transactional;
    
    @Autowired
    DealOrderDAO DealOrderSvcImpl.dealOrderDAO;
    
    public long DealOrderSvcImpl.countAllDealOrders() {
        return dealOrderDAO.count();
    }
    
    public void DealOrderSvcImpl.deleteDealOrder(DealOrder dealOrder) {
        dealOrderDAO.delete(dealOrder);
    }
    
    public DealOrder DealOrderSvcImpl.findDealOrder(Integer id) {
        return dealOrderDAO.findOne(id);
    }
    
    public List<DealOrder> DealOrderSvcImpl.findAllDealOrders() {
        return dealOrderDAO.findAll();
    }
    
    public List<DealOrder> DealOrderSvcImpl.findDealOrderEntries(int firstResult, int maxResults) {
        return dealOrderDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DealOrderSvcImpl.saveDealOrder(DealOrder dealOrder) {
        dealOrderDAO.save(dealOrder);
    }
    
    public DealOrder DealOrderSvcImpl.updateDealOrder(DealOrder dealOrder) {
        return dealOrderDAO.save(dealOrder);
    }
    
}
